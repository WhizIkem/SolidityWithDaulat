// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract LearnFunction {
    
    //state variable declaration
    uint256 hello;

    // get the data in the state variable with the help of a function
    function getData() public view returns (uint) {
        return hello;
    }

    // use function to update the data
    function updateData(uint _hello) public {
        hello = _hello;  // update state variable with new value
    }

    //get the sum of two numbers
    function get(uint _a, uint _b) public pure returns(uint) {
        uint newNumber = _a + _b;
        return newNumber;
    }

    //get the sum of two numbers and modify the state with the output
    function get2(uint _c, uint _d) public returns(uint) {
        uint addNumber = _c + _d;
        hello = addNumber;
        return hello;
    }
}