//SPDX-License-Identifier: MIT

pragma solidity 0.8.15;

contract ContractOne {

    mapping (address => uint) public addressBalances;

    function deposit() public payable {
        addressBalances[msg.sender] += msg.value;
    }
}   

contract ContractTwo {
    receive() external payable {}

    function depositOnContractOne(address _contractOne) public {
        bytes memory payload = abi.encodeWithSignature("deposit()");
        (bool success, ) = _contractOne.call{value: 10, gas: 100000}(payload);
        require(success);
    }
}