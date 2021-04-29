//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

contract Error {
    function testRequire(uint256 _i) public pure {
        // Require should be used to validate conditions such as
        // -inputs
        //-conditions before execution
        //- return values from calls to other functions

        require(_i > 10, "Input must  be greater than 10");
    }

    function testRevert(uint256 _i) public pure {
        // Revert is useful when the condition to check is complex
        //This code does the exact same thing as example
        if (_i <= 10) {
            revert("Input must be greate than 10");
        }
    }

    uint256 public num;

    function testAssert() public view {
        //aser should only be used to test for internal errors
        //and to check invariants.

        // here we asert tgat num is always equal to 0
        // since it is imposible to update the value of num
        assert(num == 0);
    }
}
