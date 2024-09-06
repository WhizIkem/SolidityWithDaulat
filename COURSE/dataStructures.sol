// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract DataStructures {
    //mapping through user balance with address
    mapping(address => uint) public balances;

    uint[] public scores;

    //add amount to user balance
    function addBalance(address _user, uint256 _amount) public {
        balances[_user] = _amount;
    }
}