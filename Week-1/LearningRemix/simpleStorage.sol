// I'm a comment!
// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

// pragma solidity ^0.8.0;
// pragma solidity >=0.8.0 <0.9.0;

contract SimpleStorage {
    uint256 myFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }
    // uint256[] public anArray;
    Person[] public listOfPeople;
    //visibilty types:
    //public, internal, external, private
    //public : can be accessed outside the contract, its like a retrive function
    //internal : can be used only inside contract (by default)
    //external : are only for functions
    //private : 
    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }
    //memory, calldata: is like temporary existence, only exists uptil functions
    //memory --> can be edited
    //calldata --> cannot be edited
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        Person memory anyPerson=Person(_favoriteNumber,_name);
        listOfPeople.push(anyPerson);
    }
}