//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract MyDataTypes {

    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    // Array
    //--- fixed sized bytes arrays
    //--- dynamically sized bytes arrays

    // bytes1 public a;
    // bytes1 public b;

    bytes1 public a = 0xb5;
    bytes1 public b = 0x56;

    //byte
    //string
    //number

    //Address

    address public hey;
    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    // Default Values

    bool public defaultBool; // false
    uint public number; // 0
    int public defaultInt; // 0
    address public addr; // 0x000000000




}