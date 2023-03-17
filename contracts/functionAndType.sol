//SPDX-License-Identifier:UNLICENCED
pragma solidity ^0.8.15; 

contract FunctionAndTypes {
    address owner;

    constructor(){
        owner = msg.sender;
    }

    function deposite() public payable {
        // If we donot write any thing still function is capable to recieve ether
    }

    function add(uint _a , uint _b) internal pure returns (uint) {
        return _a + _b ;
    }

    function getOwner() public view returns (address) {
        return owner;
    } 

    function addTwoNumbers(uint _a,uint _b) public pure returns (uint){
        return add(_a,_b);
    }

}