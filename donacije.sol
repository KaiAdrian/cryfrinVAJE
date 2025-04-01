// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Fundacija {
  

    struct Donator{
        address donatorAdress;
        uint256 donacija;
    }
    Donator[] public  donatorsList;
     
    function addDonator(uint256 _donacija) public {
        donatorsList.push(Donator(msg.sender, _donacija));
    }
    
}

