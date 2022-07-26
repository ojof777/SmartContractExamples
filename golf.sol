//SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import "./Storage.sol";

contract golf is Storage {

  modifier onlyOwner() {
    require(msg.sender == owner);
    _;
  }

  constructor() {
    owner = msg.sender;
  }

  function getNumberOfGolfers() public view returns(uint256) {
    return _uintStorage["Golfers"];
  }
  function setNumberOfGolfers(uint256 toSet) public {
    _uintStorage["Golfers"] = toSet;
  }

}