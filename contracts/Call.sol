// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

contract receiver {
    event Received(address caller, uint256 amount, string message);

    receive() external payable {
        emit Received(msg.sender, msg.value, "Fallback was called");
    }

    function foo(string memory _message, uint256 _x)
        public
        payable
        returns (uint256)
    {
        emit Received(msg.sender, msg.value, _message);
        return _x + 1;
    }
}

contract Caller {
    event Response(bool success, bytes data);

    // Let's Imagine that contract Ba does not have source code for
    // Contract A, but we do know the address of A and the function to call.
    function testCallFoo(address payable _addr) public payable {
        // You cab send ether and specify a custom gas amount

        (bool success, bytes memory data) =
            _addr.call{value: msg.value, gas: 5000}(
                abi.encodeWithSignature("foo(string, uint256)", "call foo", 123)
            );
        emit Response(success, data);
    }

    // Calling a function that does not exist trigggers the fallback function.
    function testCallDoesNotEXist(address _addr) public {
        (bool success, bytes memory data) =
            _addr.call(abi.encodeWithSignature("doesNotExist()"));
        emit Response(success, data);
    }
}
