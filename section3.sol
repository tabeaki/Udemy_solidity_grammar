// ⇨if ~ else文使い方
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;
contract section3_contrract {
    bool a = true;
    bool b = false;

    // ⇨if 文使い方
    function ifInspection() public view returns (uint) {

        if (!a) {
            return 1;
        }
        return 2;
    }

    // ⇨else if文使い方
    function elseIfInspection() public view returns (uint) {

        if (!a) {
            return 1;
        }else if(!b) {
            return 2;
        }
        return 3;
    }

    // ⇨if ~ else文使い方
    function ifElseInspection() public view returns (uint) {

        if (!a) {
            return 1;
        }else if(!b) {
            return 2;
        }else{
            return 3;
        }
    }

    // ⇨while文使い方ループについて学ぼう①
    function whileInspection() public pure returns (uint) {
        uint loopCount = 1;  
        while(loopCount < 5) {
            ++loopCount;
        }
        return loopCount;
    }
    // ⇨while のbreak continueの使い方
    function whileBreakInspection() public pure returns (uint) {
        uint loopCount = 1;  
        while(loopCount < 5) {
            if(loopCount == 2){
                continue;
            }
            
            if(loopCount == 4){
                break;
            }
            ++loopCount;
        }
        return loopCount;
    }

    // ⇨for文使い方ループについて学ぼう②
    function forInspection() public pure returns (uint) {  
        uint loopCount;
        for(loopCount = 1; loopCount < 5; ++loopCount) {
            ++loopCount;
        }
        return loopCount;
    }

    // ⇨for のbreak continueの使い方
    function forContinueInspection() public pure returns (uint) {  
        uint loopCount;
        for(loopCount = 1; loopCount < 5; ++loopCount) {
            if(loopCount == 2){
                continue;
            }
            
            if(loopCount == 4){
                break;
            }
        }
        return loopCount;
    }
}
