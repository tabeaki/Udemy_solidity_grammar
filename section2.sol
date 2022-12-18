// SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract section2_contrract {

    function A() public pure returns (int256 num) {
        return 1;
    }

    // ■int uint型
    // intは符号ありあり整数をuintは符号なし整数を扱うことができます。
    // それぞれの型には8~256bitの間で8の倍数を指定することができ、指定しない場合は256bitがデフォルトとなります。
    
    // intは符号ありあり整数
    int8 i8;
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

    string stringA = "ethereum";
    string stringB = "solidity";

    // bool型
    bool boolA = true;
    bool boolB = false;

    
    // ■Array
    uint[2] arrayA; // 固定長配列の宣言
    uint[] arrayB; // 可変長配列の宣言
    
    function addComponent(uint _num) public {
        arrayB.push(_num);
    }

    function returnArray() public view returns(uint[] memory){
        uint array_length = arrayB.length;
        uint[] memory arrayMemory = new uint[](array_length);
        arrayMemory = arrayB;
        return arrayMemory;
    }

    // ■struct
    // struct特有の特徴として、struct内に複数の uintがある場合、
    // できる限り小さい単位の uintを使うことで、Solidityが変数を一つにまとめることができ、ストレージを小さくすることができます。
    struct User {
        string name;
        uint8 age;
    }
    User userA = User("test", 3);

    // ■Mapping
    //addressがkey、uintがvalue、balansesは格納する変数
    mapping(address => uint) public balances;

    //set関数により、key=msg.senderとvalue=newBalanceを紐づけてbalancesに格納する
    function set(uint newBalance) public {
        balances[msg.sender] = newBalance;
    }
    //readValue関数により、keyにmsg.senderを入力しvalueを参照する
    function readValue() public view returns (uint) {
        return balances[msg.sender];
    }

    // ■address
    //balance	アドレスが持つEtherをWei単位で返します。返り値の型はuint256となります。
    //transfer(uint256 amount)	アドレスへEtherをWei単位で送金します。このとき、処理に失敗すると例外がthrowされます。
    //send(uint256 amount)	アドレスへEtherをWei単位で送金します。このとき、処理に失敗するとfalseを返します。このことからsendは使われない
    function getBalance(address _addr) public view returns (uint) {
        return _addr.balance; // 残高を返す
    }

    /// Mapping of ether shares of the contract.
    mapping(address => uint) shares;
    function withdraw() public payable{
        uint share = shares[msg.sender];
        shares[msg.sender] = 0;
        payable(msg.sender).transfer(share);
    }
}