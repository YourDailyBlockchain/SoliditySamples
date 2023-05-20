//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract ExampleConstructor {

    address public myAddress;

    constructor(address _someAddress){
        myAddress = _someAddress;

    }

    function setMyAddressToMsgSender() public {
        myAddress = msg.sender;
    }

}