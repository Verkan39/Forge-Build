// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.18;

contract learn_array{
    //fixed sized array
    uint8[4] public ar=[10,20,20,40];
    //dynamic array

    uint8[] public arr;
    function add_num(uint8 _num) public{
        arr.push(_num);
    }

    function get_length() public view returns(uint){
        return arr.length;
    }
    //arrays follow 0 indexing
}