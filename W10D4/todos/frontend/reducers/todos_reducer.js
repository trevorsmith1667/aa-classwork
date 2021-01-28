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
    Object.freeze(state);
    const nextState = Object.assign({}, state);

    switch (action.type) {
        case RECEIVE_TODOS:
            action.todos.forEach((todo) => {
               nextState[todo.id] = todo

            })
            return nextState;
        // return the todos from the action
        case RECEIVE_TODO:
            nextState[action.todo.id] = action.todo
        // Make a new object setting a single key value pair for action.todo
        // Return a new state object by merging your previous state and your
        // new object
        return nextState
        default:
            return state;
    }
};

export default todosReducer;