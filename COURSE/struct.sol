// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract StructExample {
    struct Person {
        string name;
        uint256 age;
    }

    Person public person;

    function setPerson(string memory _name, uint256 _age) public {
        person = Person(_name, _age);
    }
}