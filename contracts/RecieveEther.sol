// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

contract RecieveEther {
    /*
    Which function is called, fallback() or receive()?

           send Ether
               |
         msg.data is empty?
              / \
            yes  no
            /     \
receive() exists?  fallback()
         /   \
        yes   no
        /      \
    receive()   fallback()
    */

    //Fuction to receive Ether. msg.data must be empty
    receive() external payable {}

    // Fallback function is called when. msg.data is not empty
    fallback() external payable {}

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}
