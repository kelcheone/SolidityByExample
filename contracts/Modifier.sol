//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

contract FunctionModifier {
    address public owner;
    uint256 public x = 10;
    bool public locked;

    constructor() {
        // set trasaction sender as the owner of the contract.
        owner = msg.sender;
    }

    //Modifier tpo checl that the caller is the owner of the contract
    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        //underscore is a special character only used inside
        //a function modifier and it tells Solidity what to
        //execute the rest of the code.
        _;
    }

    function changeOwner(address _newOwner) public onlyOwner {
        owner = _newOwner;
    }

    //modifiers can be called before and / or after a function.
    //this modifier precvents a function from being called while
    // it is still executing.

    modifier noReentrancy() {
        require(!locked, "No reentrancy");

        locked = true;
        _;
        locked = false;
    }

    function decrement(uint256 i) public noReentrancy {
        x -= i;
        if (i > 1) {
            decrement(i - 1);
        }
    }
}
