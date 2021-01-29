
import configureStore from './store/store';
import * as todoActions from "./actions/todo_actions"
import  * as stepActions from "./actions/todo_actions"
import React from 'react'
import ReactDOM from 'react-dom'

document.addEventListener("DOMContentLoaded", () => {
    window.store = configureStore(); 
    window.todoActions = todoActions
    window.stepActions = stepActions
   
    // Creates Store for us
})
