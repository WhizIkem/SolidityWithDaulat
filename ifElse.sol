// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract IfEsle {
    uint public number = 15;
    string public text;

    function getInput(uint _number) public returns (string memory){
        if(_number == 15){
            text = "Number is correct";
        } else {
            text = "Number is not correct";
        }
    }

    //writing if else statement in shorthand (ternary way)
    function shortHand(uint _inputNumber) public returns (string memory) {
    return (_inputNumber == 15) ? text = "Number is correct" : text = "Number is not correct";
    }
}