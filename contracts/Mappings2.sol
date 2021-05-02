// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

contract Map2 {
    mapping(uint256 => string) public names;
    mapping(uint256 => Book) public books;

    struct Book {
        string title;
        string author;
    }

    constructor() public {
        names[1] = "Adam";
        names[2] = "Bruce";
        names[3] = "Carl";
    }

    function addBook(
        uint256 _id,
        string memory _title,
        string memory _author
    ) public {
        books[_id] = Book(_title, _author);
    }
}
