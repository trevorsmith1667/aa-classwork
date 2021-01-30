import React from 'react'

const TodoListItem = (props) => {
    debugger
  return(

      <>
        {props.todos.map((todo) => (

          <li>title: {todo.title}</li>
        ))}
      </>
  )
};

export default TodoListItem