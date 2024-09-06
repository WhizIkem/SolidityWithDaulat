// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract EventExample {
    event NewDeposit(address indexed from, uint amount);

    function deposit() public payable {
        emit NewDeposit(msg.sender, msg.value);
       
        }
}