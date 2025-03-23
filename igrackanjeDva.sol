// SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

contract Pagadba {

mapping (uint256 => string) public pliskoti;
   
   constructor (){
        pliskoti[0] = "Opica";
        pliskoti[1] = "Medo";
        pliskoti[2] = "Rino";
        pliskoti[3] = "Zajcek";
        pliskoti[4] = "Haskey";
        pliskoti[5] = "Kabilca";    
   }
}