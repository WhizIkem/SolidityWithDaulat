// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract NFTCount {
    uint256 public countNFT;

    //this function will increment the number of NFT
    function addNFT () public{
        //incrementing the number of nft by 1
        countNFT++; 
    }

    //this function will decrement the number of NFT
    function removeNFT () public{
        //decrementing the number of nft by 1
        countNFT--;
    }

    //check total number of NFT
    function totalNFT () public view returns (uint256){
        return countNFT;
    }
}