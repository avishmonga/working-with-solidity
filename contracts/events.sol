// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Event {
    // Event declaration
    // Up to 3 parameters can be indexed.
    // Indexed parameters helps you filter the logs by the indexed parameter
    uint count;
    event messLog(address indexed sender, string message , uint indexed count);

    function test() public {
        emit messLog(msg.sender, "Hello World!" , count++);
        emit messLog(msg.sender, "Hello EVM!" , count--);
        emit messLog(msg.sender, "Hello EVM!" , count++);
        emit messLog(msg.sender, "Hello EVM!" , count);
    }
}