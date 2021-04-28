//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract Gas {
    uint256 public i = 0;

    // infinite loop to use all the gas
    function forever() public {
        while (true) {
            i++;
        }
    }
}
