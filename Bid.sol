// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Bid{
    address public candidate;
    uint256 public currentPrice;
    constructor(uint256 basePrice){
        currentPrice = basePrice;
    }
    function bidin(uint amount){
        _transfer(msg.sender, address(this))
    }
    function countdown(){}
    function Highest(){}--> return True/False

}




