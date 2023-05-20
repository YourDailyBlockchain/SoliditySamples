//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

// If Else
contract IfElse {

    //uint256 public myNum = 5;
    string public myString;

 //   function get(uint256 _num) public returns(string memory){
 //       if(_num == 5){
 //           myString = "Hey the value of Num is 5";
 //       } else {
 //           myString = "Not 5";
 //       }

 //   }

    function shortHand(uint256 _num) public returns(string memory) {
        // if(_num == 5){
        //    myString = "hello";
        // } else {
        //   myString = "no buddy";
        // }

        return _num == 5 ? myString = "hello" : myString = "no buddy";

    }

}