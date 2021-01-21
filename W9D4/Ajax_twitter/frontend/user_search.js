class UserSearch {
    constructor(el){
        this.el = $(el)
        this.ul = $(".users")
        this.input = $(".user-input")
        this.input.oninput = handleInput()
    }

    handleInput(){
        const typed = this
        APIUtil.searchUsers(typed.input)

    }



}

module.exports = UserSearch;