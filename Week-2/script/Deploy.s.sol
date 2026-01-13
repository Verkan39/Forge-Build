//pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {Ledger} from "src/Ledger.sol";

contract DeployLedger is Script{
    Ledger public ledger;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        ledger = new Ledger();

        vm.stopBroadcast();
    }
}