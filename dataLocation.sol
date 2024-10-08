//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract DataLocation {
  // understanding the data location in solidity

  uint[] public arr;
  mapping(uint => address) map;
  struct MyStruct {
    uint foo;
  }
  mapping(uint => MyStruct) myStructs;

  function f() public {
    // call _f with state variables
    _f(arr, map, myStructs[1]);
    //get struct from mapping
    MyStruct storage myStruct = myStructs[1];
    //create a struct in memory
    MyStruct memory myStruct2 = MyStruct(0);
  }

  function _f(
    uint[] storage _arr,
    mapping(uint => address) storage _map,
    MyStruct storage _myStruct
  ) internal {
    // do something with storage array
  }

  // you can return memory variables
  function g(uint[] memory _arr) public returns (uint[] memory) {
    // do something with memory array
  }

  function h(uint[] calldata _arr) external {
    // do something with calldata array
  }
}