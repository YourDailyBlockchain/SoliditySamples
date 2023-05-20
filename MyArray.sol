//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

// Array
// Several ways to initialize an array

contract MyArray {
// Several ways to initialize an array
    uint[] public arr;
    uint[] public arr2 = [1, 2, 3];
    // Fixed sized array, all elemens initialize to 0
    uint[10] public myFixedSizeArr;

    function get(uint i) public view returns (uint) {
        return arr[i];
    }

    // Solidity can return the entire
    // but this function should be avoided for
    // arrays that can grow indefinitely in length.
    // Gas fees will continu to grow

    function getArr() public view returns (uint[] memory) {
        return arr;
    }

    function push(uint i) public {
        // Apend to array
        // This will increase th array length by 1
        arr.push(i);
    }

    function pop() public {
        // Remove the last elemnt from array
        // This will decrrease the array length by 1
        arr.pop();
    }

    function getLength() public view returns (uint) {
        return arr.length;
    }

    function remove(uint index) public {
        // Delete does not change th array length
        // It resets the value at index to its default value
        // in the case of 0 
        delete arr[index];
    }

    function examples() pure public {
        // Create array in memory, only fixed size can be created
        uint[] memory a = new uint[](5);
    }

}