import {RECEIVE_TODOS, RECEIVE_TODO} from '../actions/todo_actions'

const initialState = {
    1: {
        id: 1,
        title: "wash car",
        body: "with soap",
        done: false
    },
    2: {
        id: 2,
        title: "wash dog",
        body: "with shampoo",
        done: true
    }
};

const todosReducer = (state = initialState, action) => {
    switch (action.type) {
        case RECEIVE_TODOS:
        // return the todos from the action
        return 
        case RECEIVE_TODO:
        // Make a new object setting a single key value pair for action.todo
        // Return a new state object by merging your previous state and your
        // new object
        default:
            return state;
    }
};

export default todosReducer;