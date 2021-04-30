//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

// Base contract X
contract X {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

// Base contract Y

contract Y {
    string public text;

    constructor(string memory _text) {
        text = _text;
    }
}

// there are two ways to initialize the parent contract with parameters
// pass the parameters here in the inheritancelist

contract B is X("Input to X"), Y("Input to Y") {

}

contract C is X, Y {
    // pass the parameters here in the constructor,
    // similar to function modifiers
    constructor(string memory _name, string memory _text) X(_name) Y(_text) {}
}

//parent constructors are always called in the order of inheritance
// regardless of the order of parent contracts listed in the
// constructor of the child contract

// order of constructors called
//1. Y
//2. X
//3. E

contract E is X, Y {
    constructor() X("X was called") Y("Y was called") {}
}
