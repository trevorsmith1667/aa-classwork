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
    done: ""})
  }

  render() {
    return (
      <form onSubmit={this.handleSubmit}>
        <h1>add Todo</h1>
      </form>
    )
  }
}