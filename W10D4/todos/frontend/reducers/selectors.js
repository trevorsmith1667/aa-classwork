export const allTodos = (state) => {
    let todosArr = []

     Object.values(state.todos).forEach(todo => {
        todosArr.push(todo)
    })
    return todosArr
}