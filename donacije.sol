// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Fundacija {
  

    struct Donator{
        address donatorAdress;
        uint256 donacija;
    }
    Donator[] public  donatorsList;
    //   mapping(address => uint256) public donatorsList;

    function addDonator(uint256 _donacija) public   {
        donatorsList.push(Donator(msg.sender, _donacija));
    }

    function viewDonator() public view returns (Donator[] memory) {
       return donatorsList;
    }
    //   function addDonacija(uint256 _amount) public {
    //     donatorsList[msg.sender] += _amount;
    // }
    ///getter
    // function getDonacija() public  view returns (uint256){
    //     return donatorsList[msg.sender];  
    // }
//     // function getDonationByAddress(address _addr) public view returns (uint256) {
//     // for (uint256 i = 0; i < donatorsList.length; i++) {
//     //     if (donatorsList[i].donatorAddress == _addr) {
//     //         return donatorsList[i].donacija;
//     //     }
//     // }
//     // return 0; // Če naslov ni najden, vrne 0
// }
    function addPrispevek() external payable {
        require(msg.value>10000,'Prispevek je ni\u017Eji od minimalnega');
    }
}

