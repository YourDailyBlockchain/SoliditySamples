//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

// View keyword allows us to read the state variables, not change them.

contract View {

// State variable
    uint256 Num1 = 2;
    uint256 Num2 = 7;

// Function returns value of state variables
    function getResults() public view returns(uint256, uint256){
        return (Num1, Num2);
    }

}