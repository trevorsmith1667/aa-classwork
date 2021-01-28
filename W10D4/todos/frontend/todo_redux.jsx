
import configureStore from './store/store';
import {receiveTodo, receiveTodos} from "./actions/todo_actions"

document.addEventListener("DOMContentLoaded", () => {
    window.store = configureStore(); 
    window.receiveTodo = receiveTodo
    window.receiveTodos = receiveTodos
    // Creates Store for us
})
