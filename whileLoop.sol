// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract WhileLoop {
    uint[] data;
    uint k = 0;

    function loop() public returns (uint[] memory) {
        while(k < 5) {
            k++;
            data.push(k);
        }

        return data;
    }

    // function to view the data
    function getData() public view returns (uint[] memory) {
        return data;
    }
}