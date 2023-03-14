// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyToken {

    // public variables here
    string public tokenName = "Chitcoin";
    string public tokenAbbreviation = "CTC";
    uint public tokenSupply; // default value 0


    // mapping variable here
    mapping(address => uint) internal addressToBalance; 

    //  key as address and value of that address is balance 

    // mint function

    function mint(uint _value) external returns (bool status) {
        // address: 0 + _value
        addressToBalance[msg.sender] += _value; 
        
        tokenSupply+= _value; 
        return true;
    }

    // burn function

    function burn(uint _value) external returns (bool status){
        if(addressToBalance[msg.sender] >= _value){
            addressToBalance[msg.sender]-= _value;
            tokenSupply-= _value; 
            return true;
        }
        return false;
    }

}