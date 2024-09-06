// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

//base contract
contract BaseContract {
    function sayHello() public pure virtual returns (string memory) {
        return "Hello from BaseContract";
    }
}

// derive contract from base contract
contract DerivedContract is BaseContract{
    function sayHello() public pure override returns (string memory){
        return "Hello from DerivedContract";
    }
}

contract ModifierExample {
    address public owner;

    constructor() {
        owner = msg.sender;
        
    }
    
    modifier onlyOwner(){  // modifier 
         require(msg.sender == owner, "Not the contract owner");  // modifier body
         _;  // modifier body
    }

    function sensitiveAction() public onlyOwner{
        // some sensitive action
    }
}