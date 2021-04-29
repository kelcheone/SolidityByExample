//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract Function {
    // functions can return multiple values

    function returnMany()
        public
        pure
        returns (
            uint256,
            bool,
            uint256
        )
    {
        return (1, true, 2);
    }

    // Return values can be named.

    function named()
        public
        pure
        returns (
            uint256 x,
            bool b,
            uint256 y
        )
    {
        return (1, true, 2);
    }

    // Return values can be asigned to their name.
    // In this case the return statement can be ommited
    function destructingAssignments()
        public
        pure
        returns (
            uint256,
            bool,
            uint256,
            uint256,
            uint256
        )
    {
        (uint256 i, bool b, uint256 j) = returnMany();
        //values can be left out.
        (uint256 x, , uint256 y) = (4, 5, 6);
        return (i, b, j, x, y);
    }

    // cannot use map for neither input nor output
    // can use array for input
    function arrayInput(uint256[] memory _arr) public {}

    // can use array for output
    uint256[] public arr;

    function arrayOutput() public view returns (uint256[] memory) {
        return arr;
    }
}
