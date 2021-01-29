import { RECEIVE_STEPS, RECEIVE_STEP, REMOVE_STEP } from '../action/step_action'

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
      action.steps.forEach((step) => {
        nextState[step.id] = step

      })
      return nextState;
    // return the todos from the action
    case RECEIVE_TODO:
      nextState[action.todo.id] = action.todo
      // Make a new object setting a single key value pair for action.todo
      // Return a new state object by merging your previous state and your
      // new object
      return nextState
    case REMOVE_TODO:
      //  return Object.assign({}, state, {
      //     todo: Object.keys(state.todo).reduce((result, key) => {
      //         if (key !== todo.id) {
      //             result[key] = state.todo[key];
      //         }
      //         return result;
      //     }, {})
      // });
      // state.filter((todo) => todo.id !== action.todo.id)
      //const ids = Object.values(state.todo.id.byId)
      // nextState[action.todo.id] = {}
      debugger
      nextState[action.todo.id] = action.todo
      delete nextState[todo.id]
      return nextState
    default:
      return state;
  }
};

export default todosReducer;