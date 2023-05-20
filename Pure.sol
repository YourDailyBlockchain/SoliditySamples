//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

// Pure cannot access state variables. Below we are returning local variables (muNum1) and (muNum2)

contract Pure {

    uint256 Num1 = 4;
    uint256 Num2 = 10;

    function getData() public pure returns(uint256, uint256){

        uint256 muNum1 = 30;
        uint256 muNum2 = 50;

        return (muNum1, muNum2);

    }


}