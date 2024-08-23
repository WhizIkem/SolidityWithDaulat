// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract StateVariables {
    // no default value assigned
    string public name;
    uint public no;
    bytes public wallet;

    // default values assigned 
    string public defaultName = "Whiz";
    uint public defaultNo = 500;
    bytes public defaultWallet = "whiz wallet";

    //update state variable with constructor
    constructor (string memory _name, uint _no) {
        name = _name;
        no = _no;  // assigns the parameter to the state variable 
    }

    //update state variable with a function
    function udpateState(string memory _name,uint _no) public {
        name = _name;
        no = _no;   // assigns the parameter to the state variable  
    }

}