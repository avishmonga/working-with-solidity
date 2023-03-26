//SPDX-License-Identifier:UNLICESENSED


pragma solidity ^0.8.13;

interface ICounter {
    function formula(uint _num) external pure returns (uint);
}

abstract contract AbsContract {
    function multiplyBy5(uint _num) external pure returns (uint){
        return _num *5;
    }
    function formula(uint _num) external pure virtual returns (uint);
}

contract MyContract is ICounter {
    function formula(uint _num) external  pure override returns(uint) {
        return _num*5;
    } 
}

contract NewContract is AbsContract {
     function formula(uint _num) external  pure override returns(uint) {
        return _num*10;
    } 
}