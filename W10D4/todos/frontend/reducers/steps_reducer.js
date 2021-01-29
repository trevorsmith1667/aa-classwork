import { RECEIVE_STEPS, RECEIVE_STEP, REMOVE_STEP } from '../action/step_actions'

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

const stepsReducer = (state = initialState, action) => {
  Object.freeze(state);
  const nextState = Object.assign({}, state);

  switch (action.type) {
    case RECEIVE_STEPS:
      action.steps.forEach((step) => {
        nextState[step.id] = step

      })
      return nextState;
    // return the todos from the action
    case RECEIVE_STEP:
      nextState[action.step.id] = action.step
      // Make a new object setting a single key value pair for action.todo
      // Return a new state object by merging your previous state and your
      // new object
      return nextState

    case REMOVE_STEP:
      delete nextState[step.id]
      return nextState
    default:
      return state;
  }
};

export default stepsReducer;