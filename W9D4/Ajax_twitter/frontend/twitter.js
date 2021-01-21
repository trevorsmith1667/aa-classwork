const FollowToggle = require("./follow_toggle")
const UserSearch = require("./user_search")


$(() => {
    $(".follow-toggle").each((index, button) => {
        new FollowToggle(button);
    })

    $(".user-search").each((index, button) => {
        new UserSearch(button);
    })
})