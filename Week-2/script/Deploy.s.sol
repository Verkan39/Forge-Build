//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {Ledger} from "src/Ledger.sol";

contract DeployLedger is Script{

    function setUp() public {}

    function run() public {
        vm.createSelectFork("sepolia");
        vm.startBroadcast();

        new Ledger();

        vm.stopBroadcast();
    }
}