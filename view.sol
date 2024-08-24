// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract View {
    //state variables declared by default
    uint public Sandra = 24;
    uint public Akash = 16 ;

    //using view to check the state variable value
    function getResult() public view returns (uint, uint) {
        return (Sandra, Akash);
    }
}