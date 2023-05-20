//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

//CONSTANTS cost less gas for variables that are not going to change within the contract
contract Constant {

    address public constant MY_ADDR = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    function getConstant() public view returns(address){
        return MY_ADDR;
    }

}