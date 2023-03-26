//SPDX-License-Identifier:UNLICESENSED


pragma solidity ^0.8.13;

contract ViewAndPure {
    uint x=5;

    function viewFun(uint _y) external view returns(uint) {
        return x*_y;
    }

    function pureFun(uint _x , uint _y) external pure returns(uint) {
        return _x*_y;
    }
}