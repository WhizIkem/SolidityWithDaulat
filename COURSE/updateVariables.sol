// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract UpdateVariables {

    uint public myNum;

    //direct assignment of value to variable
    uint public myNum1 = 10;

    //assigning value to variable using constructor
    constructor (uint _myNum) {
        myNum = _myNum;
    }

    mapping (address => uint) public balances;

    function transfer(address _to, uint _amount) public {
        require(balances[msg.sender] >= _amount, "insufficient balance");
        balances[msg.sender] -= _amount;
        balances[_to] += _amount;
    }

}