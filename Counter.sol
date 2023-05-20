//SPDX-License-Identifier: MIT

pragma solidity 0.6.0;


contract Counter {

    // 1, 2, 3...  unsigned
    uint count = 1;

    function getCount() public view returns(uint) {
        return count;
    }

    function incrementCount() public {
        count ++;
    }
}