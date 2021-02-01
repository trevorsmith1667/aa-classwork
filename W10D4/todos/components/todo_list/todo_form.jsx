import React from 'react';
class TodoForm extends React.Component{
  constructor(props){
    super(props)
    this.state = {
      id: Math.floor(Math.random() * 1000000),
      title: "",
      body: "",
      done: ""
    }
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.receiveTodo(this.state)
  this.setState({
    id: Math.floor(Math.random() * 1000000),
    title: "",
    body: "",
    done: "false"})
  }


  // updateTitle(e) {
  //   this.setState({ title: e.target.value });
  // }

  // updateBody(e) {
  //   this.setState({ body: e.target.value })
  // }

  update(e) {
    return e => this.setState({[e]: e.target.value})
  }

  render() {
    return (
      <form onSubmit={this.handleSubmit}>
        <h1>Add Todo</h1>
        <label>Title:
          <input className="input" value={this.state.title} ></input>
        </label>
        <br/>
        <label>Body:
          <input className="input" value={this.state.body} ></input>
        </label>
        <input type="submit" value="Add Todo"></input>
      </form>
    )
  }
}

export default TodoForm;