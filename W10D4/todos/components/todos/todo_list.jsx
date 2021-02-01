import React from 'react'
import TodoListItem from "../todo_list/todo_list_item"
import TodoForm from "../todo_list/todo_form"
const TodoList = (props) => {
  // debugger
  return(
    <>
      <ul>
        {props.todos.map(todo=> {

          return <TodoListItem key={todo.id} todo={todo} />
        })}
      </ul>
      <TodoForm receiveTodo={props.receiveTodo}/>
    </>
  )
};

// class TodoList extends React.Component {

//   render() {
//     const TodoList = 
//     return (
//       <ul>
//         {props.todos.map(todo=> {

//           return <TodoListItem key={todo.id} todo={todo} />
//         })}
//       </ul>

//     )
//   }

// }

export default TodoList