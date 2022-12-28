// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;
contract section3_contract {
    bool a = true;
    bool b = false;

    // ⇨ifを使って条件分岐できるようになろう！
    function ifInspection() public view returns (uint) {

        if (!a) {
            return 1;
        }
        return 2;
    }

    // ⇨else ifを使って複雑な条件分岐をできる様にしよう！
    function elseIfInspection() public view returns (uint) {

        if (!a) {
            return 1;
        }else if(!b) {
            return 2;
        }
        return 3;
    }

    // ⇨if ~ elseを使って複雑な条件分岐をできる様にしよう！
    function ifElseInspection() public view returns (uint) {

        if (!a) {
            return 1;
        }else if(!b) {
            return 2;
        }else{
            return 3;
        }
    }

    // ⇨while文を使用してループできる様になろう
    function whileInspection() public pure returns (uint) {
        uint loopCount = 1;  
        while(loopCount < 5) {
            ++loopCount;
        }
        return loopCount;
    }
    // ⇨while のbreak continueを使ってループを制御しよう！
    function whileBreakInspection() public pure returns (uint) {
        uint loopCount = 1;  
        while(loopCount < 5) {
            // if(loopCount == 2){
            //     continue;
            // } //無限ループになる為失敗します。
            
            if(loopCount == 4){
                break;
            }
            ++loopCount;
        }
        return loopCount;
    }

    // ⇨for文使い方ループについて学ぼう
    function forInspection() public pure returns (uint) {  
        uint loopCount;
        for(loopCount = 1; loopCount < 5; loopCount++) {
            
        }
        return loopCount;
    }

    // ⇨for のbreak continueでループを制御しよう！
    function forContinueInspection() public pure returns (uint) {  
        uint loopCount;
        for(loopCount = 1; loopCount < 5; loopCount++) {
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
