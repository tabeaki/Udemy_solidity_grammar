// SPDX-License-Identifier: MIT

pragma solidity ^0.8.1;
contract section4_contract {

    // ■bool比較演算を理解して条件を制御しよう！
    // && (logical conjunction, “and”)
    function getBool1() public pure returns (bool) {
        bool a = true;
        bool b = false;
        
        // aとbが両方trueの為処理されない
        if (b && a) {
            return true;
        }
        return false;
    }

    // || (logical disjunction, “or”)
    function getBool2() public pure returns (bool) {
        bool a = true;
        bool b = false;
        
        // このとき既にbがfalseであるため、aの処理は発動されない
        // bから処理されるされる為、aの判定はされず終わってしまう
        if (b || a) {
            return true;
        }
        return false;
    }

    // == (equality)
    function getBool3() public pure returns (bool) {
        bool a = true;
        bool b = false;
        
        // aとbが同じでないためifの中身は処理されない
        if (b == a) {
            return true;
        }
        return false;
    }

    // != (inequality)
    function getBool4() public pure returns (bool) {
        bool a = true;
        bool b = false;
        
        // aとbが同じでないことでifの中身が処理される
        if (b != a) {
            return true;
        }
        return false;
    }

    // ■算術演算を理解して計算をできる様にしよう！
    //算術演算子。+単項演算子-、*、/、%（モジュロ）、**（指数）。
   function getNumber1() public pure returns (uint){
        uint a = 3;
        uint b = 6;

        return a + b;
    }

    function getNumber2() public pure returns (uint){
        uint a = 3;
        uint b = 6;

        return a - b;
    }

    function getNumber3() public pure returns (uint){
        uint a = 3;
        uint b = 6;

        return a * b;
    }

    function getNumber4() public pure returns (uint){
        uint a = 3;
        uint b = 6;

        return a / b;
    }

    function getNumber5() public pure returns (uint){
        uint a = 3;
        uint b = 6;

        return a % b;
    }

    function getNumber6() public pure returns (uint){
        uint a = 3;
        uint b = 6;

        return a ** b;
    }

    // ■文字列比較


}