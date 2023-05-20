//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

// Solidity error handling
// ----- Revert keyword

contract RevertStatement {

    function CheckOverflow(uint256 _num1, uint256 _num2) public pure returns(string memory, uint256){
        uint256 sum = _num1 + _num2;

        if(sum < 0 || sum > 255){
            revert ("overflow exists");
        } else {
            return ("No overlfow", sum);
        }

    }

}