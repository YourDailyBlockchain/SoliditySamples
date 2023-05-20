//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract MyLocalVariables {

    uint256 public myNumber;

    function local() public returns(address, uint256, uint256){
        // variables defined inside the funciton scope
        // stored in memory
        // not stored on the blockchain

        uint256 i = 345;
        myNumber = i;

        i += 45;
        address myAddress = address(1);

        return ( myAddress, myNumber, i);

    }



}