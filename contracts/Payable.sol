// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

contract Payable {
    // payable address can receive Ether.

    address payable public owner;

    //payable constructor can receive Ether
    constructor() payable {
        owner = payable(msg.sender);
    }

    //Function to deposit Ether into this contract
    //call this function along with some ETH
    // The balance of this contract will be automaticallly updated.
    function deposit() public payable {}

    // call this function along with some ether.
    // the funcion will throw an errpr since the function is not payable.
    function notPayable() public {}

    // function to wuthdraw all the Ether from this contract.
    function withdraw() public {
        // get the amount of Ether from this contract.
        uint256 amount = address(this).balance;

        // send all the Ether to Owner
        //Owner can receive Ether since the address of owner is payable

        (bool success, ) = owner.call{value: amount}("");
        require(success, "Failed to send Ether");
    }

    // function to transfer Ether from this contract to address from input

    function transfer(address payable _to, uint256 _amount) public {
        // Note that "to" is declared as payable
        (bool success, ) = _to.call{value: _amount}("");
        require(success, "Failed to send Ether");
    }
}
