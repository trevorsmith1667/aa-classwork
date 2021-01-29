import {connect} from 'react-redux';
import {todoList} from './todo_list';
import {allTodos} from '../../frontend/reducers/selectors'
import {receiveTodo} from '../../frontend/actions/todo_actions.js'

const mapStateToProps = (state) => ({todos: allTodos(state)})

const mapDispatchToProps = (dispatch) => ({
  receiveTodo:  (todo) => dispatch(receiveTodo(todo))
})
 

