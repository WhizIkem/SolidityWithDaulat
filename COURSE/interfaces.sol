// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface Greeter {
    function greet() external view returns (string memory);
}

contract GreeterCaller {
    function callGreet(address _greeter) public view returns (string memory) {
        return Greeter(_greeter).greet();
    }
}