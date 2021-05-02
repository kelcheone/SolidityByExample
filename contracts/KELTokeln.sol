// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

contract KelToken {
    address owner;
    mapping(address => uint256) public balances;

    constructor() public {
        owner = msg.sender;
        balances[owner] = 10000;
    }

    function transfer(uint256 amount, address to) public {
        require(balances[msg.sender] >= amount, "choose a smaller amount");
        require(balances[msg.sender] - amount <= balances[msg.sender]);
        require(balances[to] + amount >= balances[to]);
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }
}
