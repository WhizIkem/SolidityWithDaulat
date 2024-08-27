// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// Base contract A
contract A {
  string public name;
  
  constructor(string memory _name) {
    name = _name;
  }
}

// Base contract B
contract B {
  string public text;
  
  constructor(string memory _text) {
    text = _text;
  }
}

// there are two ways to initialize parent contract with parameters
// initialize with the value
contract C is A("Input to A"), B("Input to B") {
}

// inherit parent contract with value
contract D is A, B {
  constructor(string memory _name, string memory _text) A("_name") B("_text") {
  }
}


contract E is A, B {
  constructor() A("A was called") B("B was called") {
  }
}