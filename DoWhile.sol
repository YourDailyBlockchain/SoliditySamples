//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

// Solidity - Do While Loop

// Syntax
    //    do{
    //       block of statemen to be executed
    //   } while(condition)

contract DoWhileLoop {

    uint256[] data;
    uint8 k = 0;

    function loop() public returns(uint256[] memory){
        do{
            k++;
            data.push(k);
        } while(k < 5);
        return data;
    }

}