// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract AssertStatement {

    bool result;

    //assert checks if condition is true
    function checkNum (uint _num1, uint _num2) public returns (bool){
        uint sum = _num1 + _num2;
        assert(sum <= 255);
        result = true;
    }

    // function to get result
    function getResult() public view returns(string memory) {
        if(result == true) {
            return "data is within 255";
        } else {
            return "data is not within 255";
        }
    }
}