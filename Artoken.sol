// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
contract Tokenization is ERC20{
    uint public minimumPresetValue;
    uint public currentPrice;
    //uint256 public tokenAmount;
    uint256 public initialPayment;
    address public buyerAddress;
    address public escrowAddress;
    bool public successful;
    constructor(
        address _buyerAddress,
        address _escrowAddress,
        uint _minimumPresetValue,
        uint _currentPrice,
        uint256 _initialPayment
    ) ERC20("Artoken", "ART"){
        buyerAddress = _buyerAddress;
        escrowAddress = _escrowAddress;
        minimumPresetValue = _minimumPresetValue;
        currentPrice = _currentPrice;
        initialPayment = _initialPayment;
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public{
        _mint(to, amount);
    }
    function set_successful(bool _successful) public{
        successful = _successful;
    }
    function collectDifference() public payable {
        require(successful,'Unsuccessful auction, no additional amount charged');
        require(currentPrice > minimumPresetValue, "No price difference");
        uint256 difference = currentPrice - minimumPresetValue;
        uint256 additionalTokens = (difference * minimumPresetValue) / currentPrice;
        
        require(this.balanceOf(msg.sender) >= additionalTokens, "Insufficient tokens");
        //creates new
        _transfer(buyerAddress, escrowAddress, additionalTokens);
    }

    // Release the tokens
    function releasetokens() public {
        require (successful == false, 'Successfully bought, no refund back');
        require(this.balanceOf(escrowAddress) >= initialPayment, "Insufficient tokens");
        _transfer(escrowAddress,buyerAddress,initialPayment);
        }
}







