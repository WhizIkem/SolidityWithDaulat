// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract ArrayRemoveByShifting {
 
  uint[] public arr;

  // Function to remove an item from the array by shifting elements
  function remove(uint _index) public {
    require(_index < arr.length, "Index out of bounds");
    for (uint i = _index; i < arr.length - 1; i++) {
      arr[i] = arr[i + 1];
    }
    arr.pop();
  }

  // Test function to validate the remove logic
  function test() external {
    // Case 1: Remove from a larger array
    arr = [1, 2, 3, 4, 5];
    remove(2);  // Removes the element at index 2 (which is 3)
    assert(arr[0] == 1);
    assert(arr[1] == 2);
    assert(arr[2] == 4);
    assert(arr[3] == 5);
    assert(arr.length == 4);

    // Case 2: Remove the only element in a single-element array
    arr = [1];
    remove(0);  // Removes the only element
    assert(arr.length == 0);
  }
}
