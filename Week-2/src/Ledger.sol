// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.18;

contract Ledger{
    event Deposit(
        address user,
        uint256 amount
    );

    function getBalance() external view returns(uint256){
        return address(this).balance;
    }

    function deposit() external payable {
    require(msg.value > 0, "No ETH sent");

    emit Deposit(msg.sender, msg.value);
    }
}