// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ForLoop {

    uint[] data;

    function forLoop() public returns (uint[] memory) {
        for (uint i = 0; 1 < 5; i++) {
            data.push(i);
        } return data;
    }   

}