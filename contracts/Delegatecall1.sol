// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

contract DC1 {
    uint256 public num;
    address public sender;
    uint256 public value;

    function setVars(uint256 _num) public payable {
        num = _num;
        sender = msg.sender;
        value = msg.value;
    }
}
