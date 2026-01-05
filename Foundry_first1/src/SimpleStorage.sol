pragma solidity ^0.8.18;

contract SimpleStorage {
    uint256 public number;

    function set(uint256 newNumber) public {
        number = newNumber;
    }

}