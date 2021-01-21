const APIUtil = {

    followUser: id => {
        $.ajax({
            url: `/users/${id}/follow`,
            dataType: 'JSON',
            method: 'DELETE',
        })
    },

    unfollowUser: id => {
        $.ajax({
            url: `/users/${id}/follow`,
            dataType: 'JSON',
            method: 'DELETE',
        })
    }
    
}
module.exports = APIUtil;