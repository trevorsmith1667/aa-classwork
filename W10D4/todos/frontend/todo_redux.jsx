
import React from 'react'
import ReactDOM from 'react-dom'
import Root from "../components/root"
import configureStore from "./store/store"
import {allTodos} from './reducers/selectors'
//import * as todoActions from './actions/todo_actions'


const todos = {
    todos: {
        1: {
        id: 1, 
        title: "new todo"
         },

         2: {
             id: 2, 
             title: "more todos"
         },
         3: {
             id: 3, 
             title: "still more todos"
         }
        }
}
document.addEventListener("DOMContentLoaded", () => {
    const store = configureStore(todos)
    window.store = store 
    const root = document.getElementById('react-root');
    ReactDOM.render(<Root store={store}/>, root) 
    window.allTodos = allTodos
    // Creates Store for us
})
