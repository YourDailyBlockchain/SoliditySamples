//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract MyStateVariables {

 //   string public defaultText - "Hey Default Text";
 //   uint256 public defaultNum = 5;

 //   bytes public defultBytes = "hey Default";
 //   bytes public defaultBytesNo;

 //   uint256[] public mynumber;

    string public myState;
    uint256 public myNum;

 //   constructor( string memory _text, uint _no ){
 //       myState = _text;
 //       myNum = _no;

 //   }

    function update( string memory _text, uint _no ) public {
        myState = _text;
        myNum = _no;
    }

}