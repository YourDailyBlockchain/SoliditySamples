//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

// While Loop
// Syntax
    // while (condition){
        // statement or block of code ot be executed if the condition is true
    // }

contract WhileLoop {

    uint256[] data;
    uint8 k = 0;

    function loop() public returns(uint256[] memory){
        while(k < 5){
            k++;
            data.push(k);
        }
        return data;

    }


}