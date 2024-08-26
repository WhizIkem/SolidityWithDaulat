// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract DoWhileLoop {

    uint[] data;
    uint c;

    function loop() public returns (uint[] memory) {
        do {
            c++;
            data.push(c);
        } while (c < 5);
        return(data);
    }

    // function to view the loop result
    function viewLoop() public view returns (uint[] memory) {
        return(data);
    }
}