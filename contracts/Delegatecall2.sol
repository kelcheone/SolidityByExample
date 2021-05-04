// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

contract DC2 {
    uint256 public num;
    address public sender;
    uint256 public value;

    function setVars(address _contract, uint256 _num) public payable {
        // DC2's storage is set, DC! is not modified
        (bool success, bytes memory data) =
            _contract.delegatecall(
                abi.encodeWithSignature("setVars(uint256)", _num)
            );
    }
}
