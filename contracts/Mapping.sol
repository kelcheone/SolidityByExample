//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract Mapping {
    // mapping from addreaa to uint
    mapping(address => uint256) myMap;

    function get(address _addr) public view returns (uint256) {
        //Mapping always returns a value,
        //If the value was never set it will return default value

        return myMap[_addr];
    }

    function set(address _addr, uint256 _i) public {
        // update the valu at this address
        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        // reset the value of the default value
        delete myMap[_addr];
    }
}

contract NestedMapping {
    //Nested mapping (mapping from address to another mapping)
    mapping(address => mapping(uint256 => bool)) nested;

    function get(address _addr1, uint256 _i) public view returns (bool) {
        //You can get valuws from nested mapping
        // even when it is not initialized
        return nested[_addr1][_i];
    }

    function set(
        address _addr1,
        uint256 _i,
        bool _boo
    ) public {
        nested[_addr1][_i] = _boo;
    }

    function remove(address _addr1, uint256 _i) public {
        delete nested[_addr1][_i];
    }
}
