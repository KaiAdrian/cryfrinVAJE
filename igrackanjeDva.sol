// SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

//string public beseda = "\u010C\u0160\u017D \u010D\u0161\u017E";  // "ČŠŽ čšž"


contract Pagadba {

   // mapping (uint256 => string) public pliskoti;
      
   //    constructor (){
   //         pliskoti[0] = "Opica";
   //         pliskoti[1] = "Medo";
   //         pliskoti[2] = "Rino";
   //         pliskoti[3] = "Zajcek";
   //         pliskoti[4] = "Haskey";
   //         pliskoti[5] = "Kabilca";    
   //    }

    struct Plisko{
      string ime;
      uint256 starost;
      bool  vZvezi;
   }
  

// Array za shranjevanje vseh Plisko objektov
    Plisko[] public pliskoti;

 // Plisko public plisko1 =Plisko("Opica",10,true);
      // Plisko public plisko2 =Plisko("Medo",13,true);
    constructor() {
        // Inicializacija podatkov
        pliskoti.push(Plisko("Opica", 10, true));
        pliskoti.push(Plisko("Medo", 13, true));
        pliskoti.push(Plisko("Rino", 8, false));
    }
    function getPliskoByIndex(uint256 indeks)  public view  returns (string memory,uint256, bool) {
      require(indeks<= pliskoti.length-1,"pod tem indeksom \u0161e ni pli\u0161kota");
      Plisko memory plisko = pliskoti[indeks];
      return (plisko.ime, plisko.starost , plisko.vZvezi);
    }
    

   // function getPlisko()  public returns (string memory,uint256,bool){
   //    return (_plisko.ime,_plisko.starost,_plisko.vZvezi);
   // }
}
