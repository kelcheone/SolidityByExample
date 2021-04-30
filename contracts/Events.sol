//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

contract Event {
    //event declaration
    // upto 3 parameters can be indexed.
    // indexed parameters helps you filter the logs by the indexed parameter

    event Log(address indexed sender, string message);
    event AnotherLog();

    function test() public {
        emit Log(msg.sender, "Hello World!");
        emit Log(msg.sender, "Hello EVM");
        emit AnotherLog();
    }
}
