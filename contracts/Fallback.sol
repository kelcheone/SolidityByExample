// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

contract Fallback {
    event Log(uint256 gas);

    //Fuction to receive Ether. msg.data must be empty
    receive() external payable {}

    // FAllBack function must be declared as external.
    fallback() external payable {
        // send/ transfer (fowards 2300 gas to this fallback function)
        // call (fowards all of the gas)
        emit Log(gasleft());
    }

    // Helper function to check the balance of this contract
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}

contract SendToFallback {
    function transferToFalllback(address payable _to) public payable {
        _to.transfer(msg.value);
    }

    function callFallback(address payable _to) public payable {
        (bool sent, ) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }
}
