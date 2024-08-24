// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract WhizEvent {
    uint numOfTicket;
    uint price;
    uint totalAmount;
    uint startTime;
    uint endTime;
    uint timeRange;
    string message = "Buy your first EVENT Ticket now";

    constructor (uint _price) {
        price = _price;
        startTime = block.timestamp;
        endTime = block.timestamp + 5 days;
        timeRange = (endTime - startTime) /60/60/24;  // this converts it into seconds 
    }

    // buy tickect function
    function buyTicket(uint _value) public returns(uint ticketID) {
        require(_value >= price); // command to ensure value being inputed is higher than the price
        numOfTicket++;
        totalAmount += _value;
        ticketID = totalAmount;
    }

    // get total amount
    function getTotalAmount() public view returns (uint) {
        return totalAmount;
    }
}