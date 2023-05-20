//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract MyFunctions {

    uint256 public hey;

    // get data with the help of function
    function getInfo() public view returns(uint256){
        return hey;
    }

    function updateData(uint256 _hey) public{
        hey = _hey;
    }

    function get(uint256 _a, uint256 _b) public returns(uint){
        uint256 newNumber = _a + _b;
        hey - newNumber;
        return hey;
    }

}