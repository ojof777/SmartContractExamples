// SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

import "./Storage.sol";

contract Golf is Storage {
    
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
    constructor() {
        initialize(msg.sender);
    }

    function initialize(address _owner) public {
    require(!_initialized);
    owner = _owner;
    _initialized = true;
    }

    function getNumberOfGolfers() public view returns(uint256) {
    return _uintStorage["Golfers"];
    }
    function setNumberOfGolfers(uint256 toSet) public onlyOwner{
    _uintStorage["Golfers"] = toSet;
    }

}