//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

// Solidity - For Loop

// Syntax
    //    for(initalization; test condition; iteration statement){
    //       statement or block of code to be executed if the condition is fulfilled
    //   }

contract ForLoop {

    uint256[] data;

    function loop() public returns(uint256[] memory){
        for(uint256 i = 0; i < 5; i++){
            data.push(i);
        }
        return data;
    }

}