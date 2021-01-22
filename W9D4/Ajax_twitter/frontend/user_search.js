const FollowToggle = require("./follow_toggle");

class UserSearch {
    constructor(el){
        this.el = $(el)
        this.ul = $(".users")
        this.input = $(".user-input")
        this.input.oninput = handleInput()
    }

    handleInput(){
        const typed = this;
        APIUtil.searchUsers(typed.input).then((users) => this.renderResults(users));
    }

    renderResults(users) {
        this.ul.empty();


        for (let i = 0; i < users.length; i++) {
            const user = users[i];
            let tag = $(`<a href='user_url(${user})'></a>`);
            let list = $("<li></li>")
            let button = $(".follow-toggle")
            new FollowToggle(button)
            let tagged = list.append(tag).append(button);
            this.ul.append(tagged);

        }
    }
}

module.exports = UserSearch;