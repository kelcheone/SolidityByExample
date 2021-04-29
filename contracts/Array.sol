// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

contract Array {
    //several ways to initialize an array
    uint256[] public arr;
    uint256[] public arr2 = [1, 2, 3];

    //fixed size array
    uint256[10] public myfixedSizedArr;

    function get(uint256 i) public view returns (uint256) {
        return arr[i];
    }

    //Solidity can return an entire array
    // but this function should be avoided for
    // arrays that can grow indefinitely in length
    function getArr() public view returns (uint256[] memory) {
        return arr;
    }

    function push(uint256 i) public {
        //append to array
        // This will increase the array length by one
        arr.push(i);
    }

    function pop() public {
        //removelast element from array
        // this will decrease the array length by one
        arr.pop();
    }

    function getLength() public view returns (uint256) {
        return arr.length;
    }

    function remove(uint256 index) public {
        // delete does not change the array length.
        //it resets the value to its default value,
        // in this casee 0
        delete arr[index];
    }
}

contract CompactArray {
    uint256[] public arr;

    // deleting an element creates a gap in the array.
    // one trick to keep the array compact is to
    // move the last element into the place delete

    function remove(uint256 index) public {
        // move the last element into the place to delete
        arr[index] = arr[arr.length - 1];

        // remove the last element

        arr.pop();
    }

    function test() public {
        arr.push(1);
        arr.push(2);
        arr.push(3);
        arr.push(4);

        remove(1);
        remove(2);
    }
}
