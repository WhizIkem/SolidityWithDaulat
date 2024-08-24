// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Constant {
    // state variable without constant
    address public myAdd = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; 
    //	147901 gas spent

    // state variable with constant
    address public constant MY_ADDR = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    // 118171 gas spent
}