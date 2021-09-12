// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

contract Migrations {
  address public owner = msg.sender;
  uint public last_completed_migration;

  modifier restricted() {
    // This function is restricted to the contract's owner
    require(msg.sender == owner);
    _;
  }

  function setCompleted(uint completed) public restricted {
    last_completed_migration = completed;
  }
}
