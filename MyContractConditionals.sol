//SPDX-License-Identifier: MIT

pragma solidity 0.6.0;

contract MyContractConditionals {

    // Conditionals

    //if => do something
    // else => do something else

    uint[] public numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    address public owner;

    constructor() public {
        owner = msg.sender;

    }

    function countEvenNumbers() public view returns(uint) {
        uint count = 0;

        for(uint i = 0; i < numbers.length; i++) {
            // Runs code
            if(isEvenNumber(numbers[i])) {
                count ++;
            }
        }

        return count;
    }

    function isEvenNumber(uint _number) public pure returns(bool){
        // 4 / 2 == 2
        //5 / 2 == 2 with remainder 1 == not even number

        if(_number % 2 == 0) {
            return true;
        } else {
            return false;
        }
    }

    function isOwner() public view returns(bool) {
        if(msg.sender == owner) {
            return true;
        } else {
            return false;
        }

    }


}