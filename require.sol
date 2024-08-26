// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Require {
    // require has (condition, and error message) if the condition is false, then it displays the error messsage

    function checkInput(uint _input) public pure returns (string memory) {
        require(_input >= 0, "Invalid uint");
        require(_input <= 255, "Invalid uint");
        return "Input is uint";
    }

    // another example
    function oddNumber(uint _input) public pure returns (bool) {
        require(_input % 2 != 0 , "Odd number");
        return true;
    }
}