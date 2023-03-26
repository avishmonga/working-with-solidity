//SPDX-License-Identifier:UNLICESENSED

pragma solidity ^0.8.10;

contract FallbackPayable {
    address payable owner;
    event Received(address sender, uint256 amount);

    constructor() payable {
        owner = payable(msg.sender);
    }

    receive() external payable {
        emit Received(msg.sender, msg.value);
    }

    function deposite() public payable {}

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}
