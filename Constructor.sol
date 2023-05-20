//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

// Constructor runs when the contract is published.

// base contract x
contract X {

    string public name;

    constructor(string memory _name) {
        name = _name;
    }

}

// Base contract Y
contract Y {

    string public text;

    constructor(string memory _text) {
        text = _text;
    }

}

// There are 2 ways to initialize parent contract with parameters

// Pass the parameters here in the inheretence list
contract B is X("Input to X"), Y("Input to Y") {

}

contract C is X, Y {

    // Pass the parameters here in the Constructor
    constructor(string memory _name, string memory _text) X(_name) Y(_text) {}

}

// Parent constructors ar always called in the order of inheretance
// regardless of the order of parent contracts listed in the
// constructor of the child contract

// Order of constructors called:
// 1. X
// 2. Y
// 3. D

contract D is X, Y {

    constructor() X("X was called") Y("Y was called") {}

}

// Order of constructors called:
// 1. X
// 2. Y
// 3. E

contract E is X, Y {

    constructor() Y("Y was called") X("X was called") {}

}
