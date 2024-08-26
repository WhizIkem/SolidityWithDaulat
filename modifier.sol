// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract FunctionModifier {

    address public contractAddress;
    uint public c = 10;
    bool public locked;

    constructor() {
        contractAddress = msg.sender; // msg.sender is the address of the contract
    }

    modifier onlyOwner() {
        require(msg.sender == contractAddress, "Only owner can call this function");
        _; // The _ is the block of code that will be executed if the modifier is satisfied. In this case, it is the require statement.
    }

    modifier validateData(address _addr) {
        require(_addr != address(0), "Not valid address"); // Check if the address to be sent to is the same as the caller's address
        _;
    }

    function changeOwner(address _newOwner) public onlyOwner validateData(_newOwner) {
        contractAddress = _newOwner;
    }
    
    // create reEntrancy modifier
    modifier reEntrancyGuard() {
        require(!locked, "reEntrancy Guard");
        locked = true;
        _;
        locked = false;
    }

    function decrement(uint i) public reEntrancyGuard () {
        c -= 1;

        if (i > 1) {
            decrement(i - 1);
        }
    }
}   