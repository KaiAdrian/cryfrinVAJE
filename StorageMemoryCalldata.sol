// SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

contract PagadbaII {
    address internal  mujNaslov = address(0x000000000000000000000); //storage
    uint256 [] public donatorji; //storage

    mapping( string  donatorji=> uint256 cifra) public prispevali ;

     function  donatorjiAdd (string memory donator, uint256 vsota) public view  {
        // donatorji.push(donatorji(donator,vsota));
     }  

    function useMemoryCallData () public pure returns (string memory donator,uint256 cifra )   {
        return (donator,cifra);
    }
} 


