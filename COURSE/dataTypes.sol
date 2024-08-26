// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract DataTypes {

    // value data types
    uint256 public userBalance = 1000;
    bool public isActive = true; 
    string public userName = "Alice"; 
    
    // reference data types
    address[5] public users;

    function updateUser(uint index, address newUser) public {
    require(index < 5, "Index out of bounds"); // Ensure the index is within bounds
    users[index] = newUser;
    }

    //struct
    struct UserProfile {
        string name;
        uint256 age;
        bool isActive;
        }
        UserProfile public user = UserProfile("Alice", 30, true);
    
    // mapping
    mapping(address => uint256) public balances;
}