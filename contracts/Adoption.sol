// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Adoption {

    address[16] public adopters; //define an array of length 16

    // Adopting a pet
    function adopt(uint petId) public returns (uint) {
        require(petId >= 0 && petId <= 15); //check that petID is in range of array
        adopters[petId] = msg.sender; //add address that made the call to adopters array
        return petId; //return petID provided as confirmation
    }

    // Retrieving the adopters
    function getAdopters() public view returns (address[16] memory) { 
        //return the entire array
        return adopters; 
    }

}