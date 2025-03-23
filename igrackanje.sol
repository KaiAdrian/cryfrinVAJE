// SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

contract igrackanje {

    //Basic ( primitive ) types
    int256 public  magicnaStevilkaNeg = -34;
    uint256 public magicnaStevilkaPoz = 34;
    bool pravNarube = true;
    address public mojRacun =0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    string public ime = "Opica";

    function dostopSamoContrct () private pure  returns (string memory)  {
    return  "Opica + Medo";
    }
    function starsi () internal pure returns (string memory) {
      return "Samo za Rinota!";
    }
 
   
  /* a view function that can be accessed from children's contracts
*/
    function posrednik () external pure  {
     
    }
}
contract RinoChild is igrackanje { //igrackanje() je starševska pagadba,jel!
 
    function watrak() public pure returns (string memory) {
       return starsi(); 
    }
}