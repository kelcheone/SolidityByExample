// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.4;

contract A {
    string public name = "Contract A";

    function getName() public view returns (string memory) {
        return name;
    }
}

// Shaddowing is disallowed in solidity 0.6
// This will not complile
//contract B is A{
//string public name = "contract B";
//}

contract C is A {
    // this is the correct way to overide inherited state variables.
    constructor() {
        name = "Contract C";
    }
    //C.getName returns "Contract C"
}
