//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.13;


contract ErrorHandling {
    uint num;

    error notValidNumber(uint errorCode);

    function useRequire(uint _num) external returns (uint stateNumber){
        require(_num<=10,"number should not be greater then 10"); // can be used in inputs validation
        num+=_num;
        return num;
    }

    function useRevert(uint _num) external returns (uint stateNumber){
        if(_num%2==0){
            if(_num > 6){
                num+=_num;
            }else{
                revert(); // can be used for complex conditions
            }
        }else{
            if(_num<10){
                num+= _num;
            }else{
                revert();
            }
        }
        return num;
    }

    function useAssert(uint _num) external returns (uint stateNumber) {
        assert(_num<=10); // it can be used for internal purpose
         num+= _num; 
        return num;
    }
    function useCustom(uint _num) external returns (uint stateNumber) {
        if(_num > 10){
            revert notValidNumber(101); //can be used while building complex structure 
        }
        num+= _num;
        return num;
    }

}