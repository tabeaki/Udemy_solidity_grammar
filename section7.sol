
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract section7_contract {

    uint public constructorNumber;
    //■ public private 
    // private 他の言語と同じで定義されたコントラクト内でのみ使用することができます。定義されたコントラクトを継承した子のコントラクトではprivateな関数と値を使用することはできません。
    // public publicは定義されたコントラクトとこのコントラクトを継承したコントラクトから呼び出すことができかつ、外部から呼び出すことができます。関数に明示的に権限を設定していない場合のデフォルト設定がpublicとなるので気をつけてください。

    // public
    function publicFunction() public view returns (uint) {
        return constructorNumber;
    }

    // private
    function privateFunction() private view returns (uint) {
        return constructorNumber;
    }

    //■ external  internal
    // internal internalは定義されたコントラクトとこのコントラクトを継承したコントラクからのみ呼び出すことができます。変数に明示的に権限を設定していない場合のデフォルトの設定はinternalとなります。
    // external externalは外部からのみ呼び出すことができます。
    function internalFunction() internal view returns (uint) {
        return constructorNumber;
    }

    function externalFunction() external view returns (uint) {
        return constructorNumber;
    }

    // ■payable
    function payableFunction() public payable returns (uint){
        return msg.value;
    }

}

pragma solidity ^0.8.1;

contract section7_contract2 is section7_contract{
    section7_contract a = new section7_contract();
    //uint num = internalFuction();
    //uint num2 = a.externalFuction();
}

