// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Payable {
    address public owner;

    constructor() {
        //set initial owner of the contract to msg.sender
        owner = msg.sender;
    }

    //payable function to receive Ether
    function deposit() public payable {}

    function getBalance() public view returns(uint256) {
        return address(this).balance;
    }
}