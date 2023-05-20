//SPDX-License-Identifier: MIT

pragma solidity 0.6.0;

contract MyContract {

    // State variables
    string public myString = "Hello World";
    bytes32 public myBytes32 = "Hello World";
    int public myInt = 1;
    uint public myUint = 1;
    address public myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    // stored on the blockchain

    struct Person {
        uint id;
        string ballot;

    }

    Person public myStruct = Person(1, "Hello World");

    // Local variables - used inside functions
    function getValue() public pure returns(uint) {
        uint value = 1;
        return value;

    }

    // function reads the State variable on the blockchain
    function getmyUint() public view returns(uint) {
        return myUint;

    }

}