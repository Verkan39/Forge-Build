// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {Ledger} from "src/Ledger.sol";

contract LedgerTest is Test{
    Ledger public ledger;

    function setUp() public{
        ledger=new Ledger();
        ledger.setBalance(0);
    }

    function test_deposit() public{
        ledger.deposit(address(this), 100);
        assertEq(ledger.balance(), 100);
    }
}