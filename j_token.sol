//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../node_modules/@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Link is ERC20 {
  constructor() ERC20("Chainlink", "Link") {
    _mint(msg.sender, 1000);
  }
}

contract Eth is ERC20 {
  constructor() ERC20("Ethereum", "Eth") {
    _mint(msg.sender, 1000);
  }
}

contract Ajo is ERC20 {
  constructor() ERC20("Adjo", "Ajo") {
    _mint(msg.sender, 10000);
  }
}