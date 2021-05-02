// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

contract Map2 {
    mapping (uint=>string)public names;

    constructor () public {
        names[1] = "Adam"
        names[2] = "Bruce";
        names[3] = "Carl";
    }
}