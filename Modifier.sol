//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

// ----- Modifier
// Modifer is code that can be run before or after the function call.
// Generally use for 3 reasons.
// Restrict access, Validate inputs, Guard against re-entrancy attack

contract FunctionModifier {

    address public owner;
    uint256 public x = 10;
    bool public locked;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(msg.sender == owner, "Not Owner");
        _;
    }
    modifier validateData(address _addr){
        require(_addr != address(0), "not valid address");
        _;
    }

    function ChangeOwner(address _newOwner) public onlyOwner validateData(_newOwner){
        owner = _newOwner;
    }

    modifier noReentrancy(){
        require(!locked, "No Reentrancy");
        _;
        locked = false;
    }

    function decrement(uint256 i) public noReentrancy{
        x -= 1;

        if(i > 1){
            decrement(i - 1);
        }

    }

}