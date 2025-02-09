// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
contract deposit is USDCContract{
    address public USDCContract;
    address public payer;
    uint256 public amount;
    constructor(uint256 _amount){
        amount = _amount;
        _transfer(payer, address(this), amount);
    }
    function refund(successful)

}