//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract MyContract {

    // string public hey = "Hello";
    // uint256 public no = 23;

    string public hey;
    uint256 public no;

 //   constructor(string memory _hey, uint _no){
 //       hey = _hey;
 //       no = _no;
 //   }

    function addInfo(string memory _hey, uint _no) public {
        hey = _hey;
        no = _no;
    }

}