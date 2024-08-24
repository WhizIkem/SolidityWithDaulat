// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Pure {
    // state variables with declared value
    uint public Num1 = 5;
    uint public Num2 = 3;

    // pure cannot read nor write to the state variable, can only work on variables declared within the function

    function Addition() public pure returns (uint){
        uint Num3 = 5;
        uint Num4 = 10;
        return (Num4 +Num3);
    }

    // using pure to solve maths when variable is passed in the parameter. input is made in the contract
    function Sub (uint Num5, uint Num6) public pure returns (uint){
        return (Num5 -Num6);
    }
}