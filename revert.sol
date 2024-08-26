// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract RevertStatement {

    function checkDataRange (uint _num1, uint _num2) public pure returns (string memory, uint) {
        uint sum = _num1 + _num2;

        if(sum <0 || sum > 255) {
            revert("data is outside the range");
        } else {
            return ("data is within the range", sum);
        }
    }
}