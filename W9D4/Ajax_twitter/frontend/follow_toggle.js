class FollowToggle {
    constructor(el){
        this.el = $(el);
        this.userId = this.el.data("user-id");
        this.followState = this.el.data("initial-follow-state");
        this.render();
    }

    render(){
        if (this.followState === "Follow!") {
            this.el.html("Unfollow!");
        } else if (this.followState === "Unfollow!") {
            this.el.html("Follow!");
        }
    }

    handleClick(event) {
        event.preventDefault();
        if (this.followState === "Follow!") {
            $.ajax({
                url: '/users/:user_id/follow',
                dataType: 'JSON',
                method: 'DELETE',
            })
        } else if (this.followState === "Unfollow!") {
            $.ajax({
                url: '/users/:user_id/follow',
                dataType: 'JSON',
                method: 'POST',
            })
        }
        
    }
}

module.exports = FollowToggle