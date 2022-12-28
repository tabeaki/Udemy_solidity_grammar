
// SPDX-License-Identifier: MIT
// ■virtual override
// virtualは「この関数は後でオーバーライドしていいよ」
// overrideは「この関数は前に定義した関数をオーバライドしてるよ」
// Functionの方を定義する
pragma solidity ^0.8.1;

contract section8_contract {
    //■virtual override
    function foo() virtual public {}
}

contract Base is section8_contract {
    function foo() public override {}
}

// ■abstract
// アブストラクトとなるコントラクトは少なくとも1つのファンクションは下記の様に実行部がないものを持っています（ファンクションのヘッダーが ; で終わっていることを確認して下さい）
abstract contract Feline1 {
    function utterance() public virtual returns (uint);
}

//使い方の例
pragma solidity ^0.8.1;

abstract contract Feline2 {
    function utterance() public virtual returns (uint);
}

contract Cat is Feline2 {
    // Feline2を継承しているので、utteranceを必ずoverrideしないといけない
    function utterance() public pure override returns (uint) { return  1; }
}

// abstractは明示的に、このメソッドを実装しないといけないと示すことや、関数の重複を避けるために使います。

//　interface
//　abstractと違い実装できない
//　他のコントラクトを継承することはできませんが、他のインタフェースを継承することはできます。
//　宣言された関数はすべて外部関数でなければならない。
//　コンストラクタを宣言することはできません。
//　状態変数を宣言することはできない。

pragma solidity ^0.8.1;

interface Token {
    enum TokenType { Fungible, NonFungible }
    struct Coin { string obverse; string reverse; }
    function transfer(address recipient, uint amount) external;
}