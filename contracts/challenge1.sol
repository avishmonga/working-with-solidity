//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.3;

/*

Challenge : Write a simple contract and declare four different types of variables.
 Write get and set functions for each of these variables. 
 Return the value of the variable in the “set function”.

*/

/*

This contract is a challenge  where i have written get and
set functions for 4 variables with diffrent data types and 
set functions also returns the value of variable

*/

contract ReadAndWrite {
    uint num;
    bool boolean;
    string name;
    enum Status {Pending , Success , Failed}
    Status status;

    function getNum()public view returns (uint) {
        return num;
    }

    function setNum(uint _num) public returns (uint){
        num = _num;
        return num;
    }
    function getBoolean () public view returns (bool) {
        return boolean;
    }

    function setBoolean () public returns (bool){
        boolean = !boolean;
        return boolean;
    }
    function getName () public view returns (string memory){
        return name;
    }

    function setName (string memory _name) public returns (string memory) {
        name = _name;
        return name;
    }

    function getStatus () public view returns (Status) {
        return status;
    }

    function setStatus (Status _status) public returns (Status) {
        status = _status;
        return status;
    }
    function setStatusFailed () public returns (Status) {
        status = Status.Failed;
        return status;
    }

}