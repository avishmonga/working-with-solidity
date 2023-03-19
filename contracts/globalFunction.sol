// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract GlobalFunctions {
    function getValue() external payable  returns (uint){
        return msg.value;
    } 
    function getAddress() external view returns (address){
        return msg.sender;
    }
}