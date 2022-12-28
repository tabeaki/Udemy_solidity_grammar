// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract section5_contract {
    // ■Memory Storage calldata
    // storageに保存されるデータはブロックチェーンに格納される = 全てのノードで保存されるということになるため、非常にコスト（gas）が高い。
    // memory コントラクト実行時のみ保持される変数。そのため、ブロックチェーンに保存されることはない。ブロックチェーンに保存されないため、コストもかからない。
    // Calldataは外部コントラクトのファンクションの参照型のパラメータとして要求される場合にのみ有効です。Calldataは修正不可で、ファンクションの引数が保存される非永続的なエリアで、基本的にはmemoryの様に振舞います。

    // 何もつけなければ基本的にstrage
    uint[] uintA;

    function test (uint256[] memory input) public pure returns (uint256[] memory) {
        input[0] = 1; //memoryなので変更可能
        return input;
    }

    function test2 (uint256[] calldata input) public pure returns (uint256[] calldata) {
        //calldataなので変更不可
        return input;
    }

    // ■Errorハンドリングを理解しよう
    // ⇨requireでエラーハンドリングをしよう
    function requireFunction(uint a, uint b) public pure returns (uint) {
        // 条件式がtrueの時抜ける
        require(a == b, "test");
        
        return a * b;
    }
    // ⇨revertでエラーハンドリングをしよう
    function revertFunction(uint a, uint b) public pure returns (uint) {
        // trueの時にtestを表示する
        if(a == b) revert( "test");
        
        return a * b;
    }
}