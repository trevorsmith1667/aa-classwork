import {createStore} from 'redux'

const configureStore = (preloadedState = {}) => {
    return createStore({}, preloadedState)
}


export default configureStore;