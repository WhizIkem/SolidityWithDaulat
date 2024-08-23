// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract MyFirstContract {
    //update data directly on the state variable
    //string public hey = "I'm Whiz";
    //uint public no = 500;

    //update data by using a constructor
    string public hey;
    uint public no = 500;

    constructor (string memory _hey, uint _no) {
        // assigning to a state variable by using a constructor
        hey = _hey;
        no = _no;
        }
}