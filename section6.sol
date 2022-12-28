
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract section6_contract {

    // ■constructor
    // コントラクトでDeployした時に実行される処理
    // 初期に設定したい値などあればコンストラクタで処理をします。


    uint public constructorNumber;
    address immutable owner;

    constructor(uint _a){
        constructorNumber = _a;
        owner = msg.sender;
    }

    function getConstructorNumber() public view returns (uint) {
        return constructorNumber;
    }

    function getOwner() public view returns (address) {
        return owner;
    }

    
    // ■定数 immutable constant
    // constant 変数の場合はコンパイル時に値を固定する必要がありますが
    // immutable 変数の場合は構築時に値を代入することができます。
    uint256 immutable minDonation = 42;
    uint256 immutable maxDonation = calcMaxDonation();
    uint256 constant constantNumber = 1;
    
    function calcMaxDonation() public pure returns (uint256 max) {
        max = 10000 * 42;
        // Error: Cannot read from Immutables in construction context.
        // max = 10000 * minDonation;
    }

    function getMax() public view returns (uint) {
        return maxDonation;
    }

    // ■pure view

    // pure  状態を読み出したり変更したりしないことが約束されます。
    function pureFunction(uint c, uint d) public pure returns (uint) {
        // return 変数を返す、複数返す場合もあり
        // サポートされているのは、文字列（定数のみ）と値型のみです。
        return c * d;
    }

    // view  状態を変更しないことが約束される。
    function viewFunction() public view returns (uint) {
        return constructorNumber;
    }

}
