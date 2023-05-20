//SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract NFTCount {

    uint public numberOfNFT;

    // Check total number of NFTs
    function checkTotalNFT() public view returns(uint256) {
        return numberOfNFT;
    }


    // This funciton will increment the NFT number
    function addNFT() public {
        numberOfNFT += 1;
    }

    // This funciton will decrement the NFT number
    function deleteNFT() public {
        numberOfNFT -= 1;
    }

}