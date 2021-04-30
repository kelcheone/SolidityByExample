// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

/* Graph of inheritance
    A
   / \
  B   C
 / \ /
F  D,E

*/

contract A {
    function foo() public pure virtual returns (string memory) {
        return "A";
    }
}

contract B is A {
    // aoverride A.foo();
    function foo() public pure virtual override returns (string memory) {
        return "B";
    }
}

contract C is A {
    //override A.foo();
    function foo() public pure virtual override returns (string memory) {
        return "C";
    }
}

//contract can inherit from multiple parent  contracts.
// When a function is called that is defined multiple times in
// right to left , and in depths-first manner.

contract D is B, C {
    //d.foo() return "C"
    // since c is the right most parent with function foo()
    function foo() public pure override(B, C) returns (string memory) {
        return super.foo();
    }
}

contract E is C, B {
    //E.foo(); returns "B"
    //since Bis the right most parent contract with functio foo()
    function foo() public pure override(C, B) returns (string memory) {
        return super.foo();
    }
}

// Inheritance must be ordered from "most base-like" to "most derived".
//Swaping the order of A and B eill throe a complication error

contract F is A, B {
    function foo() public pure override(A, B) returns (string memory) {
        return super.foo();
    }
}
