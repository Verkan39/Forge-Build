// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.18;

contract learn_events{

    // evnets are basically for external user to listen to things happening in the smart contract
    event printing(
        address _add,
        uint256 _num
    );
    function emit_event(address add, uint256 num) public {
        emit printing(add, num);
    }
}