// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;


//understanding constructors
contract Demo_Contract {
    address public owner;

    uint public totalSupply;

    //initialize owner address
    //constructor() {
    //    owner = msg.sender;
    //}

    //set total supply
    constructor(uint _initialSupply) {
        totalSupply = _initialSupply;
    }

}