pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "src/SimpleStorage.sol";

contract SimpleStorageScript is Script {
    SimpleStorage public counter;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        counter = new SimpleStorage();

        vm.stopBroadcast();
    }
}