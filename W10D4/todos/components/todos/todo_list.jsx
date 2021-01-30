import React from 'react'
import TodoListItem from "../todo_list/todo_list_item"
const TodoList = (props) => {
  // debugger
  return(

      <ul>
        {props.todos.map(todo=> {

          return <TodoListItem key={todo.id} todo={todo} />
        })}
      </ul>
  )
};

export default TodoList