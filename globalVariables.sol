// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract GlobalVariable {
    // list of Global variables
    address public owner;
    address public Myblockhash;
    uint public difficulty;
    uint public gaslimit;
    uint public number;
    uint public timestamp;
    uint public gasprice;
    uint public nowOn;
    uint public value;
    address public origin;
    bytes public callData;
    bytes4 public Firstfour;

    constructor () {
        owner = msg.sender;
        Myblockhash = block.coinbase;
        difficulty = block.timestamp;
        gaslimit = block.gaslimit;
        number = block.number;
        timestamp = block.timestamp;
        gasprice = tx.gasprice;
        origin = tx.origin;
        callData = msg.data;
        Firstfour = msg.sig;
        }



}