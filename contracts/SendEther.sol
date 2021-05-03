// SPDX-License-Identifier: MIT

pragma solidity 0.8.4;

contract SendEther {
    function sendVisTransfer(address payable _to) public payable {
        // this function is no longer recomended for sending Ehter
        _to.transfer(msg.value);
    }

    function sendViaSend(address payable _to) public payable {
        // send returns a boolean value indicating succes or failure.
        // This function os not recomended for sending Ether.
        bool sent = _to.send(msg.value);
        require(sent, "failed to send Ether");
    }

    function sendViaCall(address payable _to) public payable {
        // call returns a boolean value indicating success r failure.
        //this is the current recomended method to use.
        (bool sent, bytes memory data) = _to.call{value: msg.value}("");
        require(sent, "failed tp send Ether");
    }
}
