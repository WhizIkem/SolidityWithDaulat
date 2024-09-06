// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract EtherTransfer {
    address payable public receiver;

    constructor(address payable _receiver) {
        receiver = _receiver;
    }

    function sendEther() public payable {
        (bool success, ) = receiver.call{value: msg.value}("");
        require(success, "Transfer failed"); // check for success
    }
}