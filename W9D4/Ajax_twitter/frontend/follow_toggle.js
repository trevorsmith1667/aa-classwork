const APIUtil = require("./api_util");

class FollowToggle {
    constructor(el){
        this.el = $(el);
        this.userId = this.el.data("user-id");
        this.followState = this.el.data("initial-follow-state");
        this.render();
        this.handleClick()
        //this.el.on("click", this.handleClick(el))
    }

    render(){
        if (this.followState === "followed") {
            this.el.html("Unfollow!");
        } else if (this.followState === "unfollowed") {
            this.el.html("Follow!");
        }
    }

    handleClick() {
        const toggled = this;
        this.el.on("click", (event)=> {
            event.preventDefault();
            if (this.followState === "followed") {
                APIUtil.unfollowUser(toggled.userId).then(() => {
                        toggled.followState = 'unfollowed';
                        toggled.render();
                    })
            } else if (this.followState === "unfollowed") {
                debugger
                APIUtil.followUser(toggled.userId).then(() => {
                        toggled.followState = 'followed'
                        toggled.render();
                    })
            }  
        })
        // event.preventDefault();
        // if (this.followState === "Follow!") {
        //     $.ajax({
        //         url: '/users/:user_id/follow',
        //         dataType: 'JSON',
        //         method: 'DELETE',
        //     })
        //     .then(this.render())
        // } else if (this.followState === "Unfollow!") {
        //     $.ajax({
        //         url: '/users/:user_id/follow',
        //         dataType: 'JSON',
        //         method: 'POST',
        //     })
        //     .then(this.render())
        // }  
        
    }
}

module.exports = FollowToggle