//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;


contract Loop {
    uint[] public nums;
    function loopTo1000 () external  pure returns(uint) {
         uint result = 0;

        for(uint i=0; i<1000; i++){
            result++ ;
        }
        return result;
    }

    function loopTo100 () external  returns (uint) {
        for(uint i=0; i<100; i++){
            if(i==9){
                continue;
            }
            if(i>10 && i<16){
                nums.pop();
            }else{
                uint t = i + nums.length;
                nums.push(t);
            }



            nums.push(i);
        }
        return nums.length;
    }
}