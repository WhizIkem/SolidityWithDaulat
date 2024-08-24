// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract LocalVariables {
    //state variable
    string public eunice = "11 years";
    uint public divine;

    //local variable
    function LocalVariable() public returns (uint) {
        uint age = 9;
        // you can also use local variable to update state variable
        divine = age;
        divine = age - 5;
        return divine;
        
    }

}
