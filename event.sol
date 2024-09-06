// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Event {

    // event declaration
    // up to 3 parameters can be indexed
    // indexed paraneter helps you filter the logs of indexed paraneters

    event Log (address indexed sender, string message);
    event AnotherLog();

    function test() public {
        emit Log(msg.sender, "Hello World");
        emit Log(msg.sender, "Hello Whiz");
        emit AnotherLog(); // emit another log with no parameters
    }
}