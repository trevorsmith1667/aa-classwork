
import configureStore from './store/store';
import {receiveTodo, receiveTodos, removeTodo} from "./actions/todo_actions"

document.addEventListener("DOMContentLoaded", () => {
    window.store = configureStore(); 
    window.receiveTodo = receiveTodo
    window.receiveTodos = receiveTodos
    window.removeTodo = removeTodo
    // Creates Store for us
})
