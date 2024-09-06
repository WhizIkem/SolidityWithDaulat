// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract StorageVsMemory {
    // This is a state variable stored in "storage"
    uint[] public storageArray;

    // Function that updates the "storageArray" using a memory array
    function updateStorageArray(uint[] memory newArray) public {
        storageArray = newArray; // Assigning from memory to storage
    }

    // Function that demonstrates working with a temporary memory array
    function getMemoryArray() public pure returns (uint[] memory) {
        // Declare and initialize a memory array
        uint[] memory tempArray = new uint[](3);
        tempArray[0] = 1;
        tempArray[1] = 2;
        tempArray[2] = 3;

        // Return the memory array (this array is temporary)
        return tempArray;
    }
}
