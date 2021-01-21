const FollowToggle = require("./follow_toggle")


$() => {
    $("follow-toggle").each((index, button) => {
        new FollowToggle(button);
    })
}