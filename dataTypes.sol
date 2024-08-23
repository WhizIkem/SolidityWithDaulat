// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract DataTypes {
    // boolean datatype is either true or false, and by default, bool is false
    bool public hey;
    bool public no = true;

    // uint is unsigned integer which means it has no negative integer
    //uint8 // ranges 0 - 2 ** 8 - 1 //255
    //uint16 // ranges 0 - 2 ** 16 - 1 // 65535
    //uint256 // ranges 0 - 2** 256 - 1 // 1.1579209e+77
    uint256 public num = 1337;

    //int includes negative integers
    //int256 // ranges -2 ** 255 to 2 ** 255 - 1
    int public inum = -1337;

    // define the minimum and maximum number
    int public minNum = type(int).min;
    int public maxNum = type(int).max;

    // Arrays

    bytes1 public a;
    bytes1 public b = 0x55;

    // Addresses

    address public erc; //default address is 0x0000000000000000000000000000000000000000
    address public erc2 = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;  // declared address

}