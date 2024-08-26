// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Visibility {
    // public keyword
    uint public age;

    // private keyword
    uint private myAge;

    function setAge(uint _myAge) private {
        myAge = _myAge;
    }

    //internal keyword can be accessed by other contracts
    uint internal myAgeTwo;

    function setAgeTwo(uint _myAgeTwo) internal {
        myAgeTwo = _myAgeTwo;
    }

    // external keyword can only be applied to function
    uint public ageThree;

    function setAgeThree(uint _ageThree) external {
        ageThree = _ageThree;
    }
}