// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.18;

contract Ledger{
    uint256 public balance;
    event Deposit(
        address user,
        uint256 amount
    );

    function setBalance(uint256 _balance) public{
        balance = _balance;
    }

    function deposit(address _user, uint256 _amount) public{
        emit Deposit(_user, _amount);
        balance += _amount;
    }
}