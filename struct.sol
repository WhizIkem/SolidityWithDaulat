// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Struct {
  struct Todo {
    string text;
    bool completed;
  }

  // An array of 'Todo' structs
  Todo[] public todos;

  function create(string memory _text) public {
    // 3 ways to initialize a struct
    // - calling it like a function
    todos.push(Todo(_text, false));

    // key value mapping
    //todos.push(Todo({text: _text, completed: false}));

    // initialize an array with data
    //todos.push(Todo("Go for a walk", true));
  }

  // Solidity automatically created a getter for 'todos' so you don't need to create it.
  function get(uint _index) public view returns (string memory text, bool completed) {
    Todo storage todo = todos[_index];
    return (todo.text, todo.completed);
  }

  // update text
  function update(uint _index, string memory _text) public {
    Todo storage todo = todos[_index];
    todo.text = _text;
  }

  // update completed
  function toggleCompleted(uint _index) public {
    Todo storage todo = todos[_index];
    todo.completed = !todo.completed;
  }
}