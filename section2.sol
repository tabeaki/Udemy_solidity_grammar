// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract section2_contract {

    // ■int uint型
    // intは符号ありあり整数をuintは符号なし整数を扱うことができます。
    // それぞれの型には8~256bitの間で8の倍数を指定することができ、指定しない場合は256bitがデフォルトとなります。
    
    // intは符号あり整数
    int8 i8 = 127;
    int16 i16;
    int32 i32;
    int64 i64;
    int128 i128;
    int256 i256;
    
    // uintは符号なし整数を扱う
    uint8 ui8;
    uint16 ui16;
    uint32 ui32;
    uint64 ui64;
    uint128 ui128;
    uint256 ui256;

    int a; // int256、初期値0
    int32 b = -10;

    uint c; // uint256、初期値は0
    uint32 d = 10;
    //uint = -1; この場合はコンパイルエラー

    // ■string型
    string stringA = "ethereum";
    string stringB = "solidity";

    // ■bool型
    bool boolA = true;
    bool boolB = false;

    // ■Array① 固定長配列
    string[3] arrayA; // 固定長配列の宣言

    // 配列の値を返す関数
    function setArray() public {
        arrayA[0] = "Apple";
        arrayA[1] = "Orange";
        arrayA[2] = "Pineapple";
    }

    // 配列の中身を全て返す関数
    function getStringArray() public view returns (string[3] memory){
        return arrayA;
    }

    // 配列の要素を返す関数
    function getStringVlaue(uint8 x) public view returns (string memory){
        return arrayA[x];
    }

    // Array② 可変長配列
    uint[] arrayB; //　可変長配列の宣言

    // 配列に追加する関数
    function addComponent(uint _num) public {
        arrayB.push(_num);
    }

    // 特定の値を返す関数
    function getIntValue(uint8 x) public view returns (uint){
        return arrayB[x];
    }

    // array.lengthで配列の要素数を返す
    function returnLength() public view returns(uint){
        return arrayB.length;
    }

    // ■struct
    // struct特有の特徴として、struct内に複数の uintがある場合、
    // できる限り小さい単位の uintを使うことで、Solidityが変数を一つにまとめることができ、ストレージを小さくすることができます。
    struct User {
        string name;
        uint8 age;
    }
    User userA = User("test", 3);
    function getUser() public view returns (string memory name, uint8 age){
        return (userA.name, userA.age);
    }

    // ■Mapping
    //addressがkey、uintがvalue、balansesは格納する変数
    mapping(address => uint) public balances;

    //set関数により、key=addrとvalue=newBalanceを紐づけてbalancesに格納する
    function set(address addr,uint newBalance) public {
        balances[addr] = newBalance;
    }
    //readValue関数により、keyにaddrを入力しvalueを参照する
    function readValue(address addr) public view returns (uint) {
        return balances[addr];
    }

    // ■address
    // データ幅は20 byteで、Ethereumのアドレスをそのまま扱うことができる。
    //balance	アドレスが持つEtherをWei単位で返します。返り値の型はuint256となります。
    //transfer(uint256 amount)	アドレスへEtherをWei単位で送金します。このとき、処理に失敗すると例外がthrowされます。
    //send(uint256 amount)	アドレスへEtherをWei単位で送金します。このとき、処理に失敗するとfalseを返します。このことからsendは使われない

    address A;
    function getBalance2(address _addr) public view returns (uint) {
        return _addr.balance; // 残高を返す
    }
    
}