import React from 'react'
import TodoListItem from "../todo_list/todo_list_item"
const TodoList = (props) => {
  return(
      <ul>
        <TodoListItem props={props} />
      </ul>
  )
};

export default TodoList