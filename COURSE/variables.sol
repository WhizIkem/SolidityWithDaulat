// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Variables {
    // state variables
    uint256 public var1;

    //local variables
    function calcSum(uint a,uint b) public pure returns(uint) {
        uint sum = a + b;
        return sum;
    }
}
    