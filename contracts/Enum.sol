//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

contract Enum {
    // enum representing shipping status
    enum Status {Pending, Shipped, Accepted, Rejected, Canceled}

    // Default value is the first element listed in
    // Definition of the type in this casea "Pending"

    Status public status;

    //returns uint
    // pending -o
    //shipped -1
    //accepted -2
    // Rejected -3
    //Canceled - 4

    function get() public view returns (Status) {
        return status;
    }

    //Update staus by passing uint into input
    function set(Status _status) public {
        status = _status;
    }

    //You can update to a specific enum like this
    function cancel() public {
        status = Status.Canceled;
    }

    //delete resets the enum to it's first value, 0
    function reset() public {
        delete status;
    }
}
