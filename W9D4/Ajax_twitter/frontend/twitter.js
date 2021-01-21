const FollowToggle = require("./follow_toggle")


$(() => {
    $(".follow-toggle").each((index, button) => {
        debugger
        new FollowToggle(button);
    })
})