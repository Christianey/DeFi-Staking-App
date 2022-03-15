pragma solidity >=0.7.0 < 0.9.0;

contract Migrations {
  address public owner; 
  uint public last_completed_migration;

  modifier restricted() {
    if(owner == msg.sender)
      _;
  }

  function setCompleted(uint completed) public restricted {
    last_completed_migration = completed;
  }

  function upgrade(address newAddress) public restricted {
    Migrations upgraded = Migrations(newAddress);
    upgraded.setCompleted(last_completed_migration);
  }
}