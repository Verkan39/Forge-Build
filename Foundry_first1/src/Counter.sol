// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

contract Counter {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}

// contract SimpleStorage{
//     uint256 public variable;
//     function set(uint256 _var) public {
//         variable = _var;
//     }
// }
