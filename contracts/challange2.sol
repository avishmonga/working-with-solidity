//SPDX-License-Identifier:UNLICENCED

pragma solidity ^0.8.0;

/*

Write a smart contract that takes some ether from the user.
Find out its value in units of:
wei
ether
gwei

*/


contract EthToUnit {
    uint constant oneEther = 1 ether;
    uint constant oneGwei = 1 gwei;


    function ethToWei () external payable returns (uint weiValue , uint gweiValue , uint etherValue){
       return (msg.value , msg.value/oneGwei , msg.value/oneEther);
    }

}