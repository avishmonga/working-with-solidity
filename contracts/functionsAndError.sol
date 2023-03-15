//SPDX-License-Identifier:UNLICENSED

pragma solidity ^0.8.0;


contract FunctionAndError {

    address admin;
    uint counter;

constructor(){
    admin = msg.sender;
}


modifier onlyAdmin {
    require(msg.sender == admin , "Access denied");
    _;
}

function get() public view onlyAdmin returns (uint){
    return counter;
}

function increment(uint _value) external onlyAdmin {
    counter += _value;
} 

}