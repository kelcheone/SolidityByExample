//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract Todos {
    struct Todo {
        string text;
        bool completed;
    }

    // an array of 'Todo' structs
    Todo[] public todos;

    function create(string memory _text) public {
        // 3 ways to intitialize a struct
        // - calling it like afunction

        todos.push(Todo(_text, false));

        //key value mapping
        todos.push(Todo({text: _text, completed: false}));

        // Initialize an empty and then update it
        Todo memory todo;
        todo.text = _text;
        // todo.completed initializes to false

        todos.push(todo);
    }

    //Solidity automatically creted a getter for 'todos, so
    // you don't actually need this function

    function get(uint256 _index)
        public
        view
        returns (string memory text, bool completed)
    {
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }

    //update text
    function update(uint256 _index, string memory _text) public {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    // update completed
    function toggleCompleted(uint256 _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }
}
