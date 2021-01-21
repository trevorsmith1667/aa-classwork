class FollowToggle {
    constructor(el){
        this.el = $(el)
        this.user-id = this.el.data("user-id")
        this.initial-follow-state = this.el.data("initial-follow-state")

    }
}

module.exports = FollowToggle