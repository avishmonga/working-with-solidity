//SPDX-License-Identifier:UNLICENSED

pragma solidity ^0.8.0;

/*

Write a Solidity contract with 4 functions-:
add, subtract, multiply and divide 2 numbers.

*/

contract Functions {
    uint a;
    uint b;

    constructor(uint _a , uint _b) {
        a=_a;
        b=_b;
    }

    function internalMultiply () internal view returns(uint){
         return a*b;
    }

    function add() external view returns (uint value){
        return a+b;
    }
    function multiply() public view returns (uint value){
    
        return internalMultiply();
    }
    function subtract() external view returns (uint) {
        uint value = a-b;
        return value;
    }
    function divide() public view returns (uint value){
        return a/b;
    }
}