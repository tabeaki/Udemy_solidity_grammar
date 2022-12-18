// ■Remixの基本操作〜ソースコードの確認からデプロイまで〜

// SPDX-License-Identifier: MIT
// ⇨SPDXは The Software Package Data Exchangeの略
// Solidityはライセンスを示すコメントで始まる必要があります。
// 今回はMITライセンスを設定しています。MITライセンスは基本的には無償でソースコードを提供し、著作者は請求などはしないと定義するものになります。
// ライセンスを指定したくない場合、またはソース コードがオープンソースでない場合は、特別な値 を使用してくださいUNLICENSED。
// https://spdx.dev/ids/#how. ライセンスの意味を調べたい方はこちらのサイトをお願いいたします。

pragma solidity ^0.8.1;

contract first_contrract {
    function A() public pure returns (int256 num) {
        return 1;
    }
}

// ■SPDX-License-Identifier: MIT
// ⇨SPDXは The Software Package Data Exchangeの略
// Solidityはライセンスを示すコメントで始まる必要があります。
// 今回はMITライセンスを設定しています。MITライセンスは基本的には無償でソースコードを提供し、著作者は請求などはしないと定義するものになります。
// ライセンスを指定したくない場合、またはソース コードがオープンソースでない場合は、特別な値 を使用してくださいUNLICENSED。
// https://spdx.dev/ids/#how. ライセンスの意味を調べたい方はこちらのサイトをお願いいたします。



// ■version Pragma
// pragmaとは、特定のコンパイラ機能またはチェックを有効にするために使用されます。
// 互換性のない変更を導入する可能性のある将来のコンパイラ バージョンでのコンパイルを拒否するために、ソース ファイルにバージョン プラグマで注釈を付けることができます (またそうする必要があります)。
// version プラグマは次のように使用されます。pragma solidity ^0.5.2;
// 上記の行を含むソース ファイルは、バージョン 0.5.2 より前のコンパイラではコンパイルされず、バージョン 0.6.0 以降のコンパイラでも動作しません
// 0.5.21のコンパイラでは動作します。
// 範囲を指定もできます。
// pragma solidity >=0.4.0 <0.6.0;


// ■Comment
// スラッシュ二つでコメントを入れることができます。
// このコードの様にメモを残したい時に書きます。
// functionなどの上にはどんな処理するかを記載しておきましょう。
/** この描き方でもコメントできます。　*/


// ■State Variables






// ⇨requireでエラーハンドリングをしよう

// ⇨revertでエラーハンドリングをしよう

// Event


// ⇨Error


// ■constructor
// コントラクトでDeployした時に実行される処理
// 初期に設定したい値などあればコンストラクタで処理をします。
contract A {
    uint public a;

    constructor(uint _a) internal {
        a = _a;
    }
}


// ■Function Modifer 修飾子について
 // constant 変数の場合はコンパイル時に値を固定する必要がありますが
 // immutable 変数の場合は構築時に値を代入することができます。
 // pure  状態を読み出したり変更したりしないことが約束されます。
 // view  状態を変更しないことが約束される。
 // return 変数を返す、複数返す場合もあり
 // サポートされているのは、文字列（定数のみ）と値型のみです。


    function f(uint a, uint b) public view returns (uint) {
        return a * (b + 42) + now;
    }
 // ■payable





 // ■override virtual


 // SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.6.0 <0.7.0;

contract Base
{
    function foo() virtual public {}
}

contract Middle is Base {}

contract Inherited is Middle
{
    function foo() public override {}
}
 // ■abstract
 // コントラクトは、少なくとも一つの機能が実装されていない場合、抽象とマークする必要があります。 コントラクトは、すべての機能が実装されている場合でも、抽象とマークすることができます。

abstract contract Feline {
    function utterance() public virtual returns (bytes32);
}


//使い方の例
// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.6.0;

abstract contract Feline {
    function utterance() public virtual returns (bytes32);
}

contract Cat is Feline {
    function utterance() public override returns (bytes32) { return "miaow"; }
}

// abstractは明示的に、このメソッドを実装しないといけないと示すことや、関数の重複を避けるために使います。
 //interface
 // abstractと違い実装できない
//他のコントラクトを継承することはできませんが、他のインタフェースを継承することはできます。
//宣言された関数はすべて外部関数でなければならない。
//コンストラクタを宣言することはできません。
//状態変数を宣言することはできない。

// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.6.2 <0.7.0;

interface Token {
    enum TokenType { Fungible, NonFungible }
    struct Coin { string obverse; string reverse; }
    function transfer(address recipient, uint amount) external;
}



