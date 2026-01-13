// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.18;

contract learn_mapping{

    mapping(address => uint256) public myMap;

    mapping(address=>mapping(uint256 => bool)) public nestedMap;

    function get1(address _addr) public view returns(uint256){
        return myMap[_addr];
    }

    function set1(address _addr, uint256 _num) public{
        myMap[_addr]=_num;
    }

    function remove1(address _addr) public{
        delete myMap[_addr];
    }

    function get2(address _addr) public view returns(bool){
        return nestedMap[_addr][1];
    }

    function set2(address _addr, uint256 _num, bool _bool) public{
        nestedMap[_addr][_num]=_bool;
    }

    function remove2(address _addr, uint256 _num) public{
        delete nestedMap[_addr][_num];
    }
}