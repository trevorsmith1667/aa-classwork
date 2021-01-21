const APIUtil = {

    followUser: id => {
        return $.ajax({
            url: `/users/${id}/follow`,
            dataType: 'JSON',
            method: 'POST',
        })
    },

    unfollowUser: id => {
        return $.ajax({
            url: `/users/${id}/follow`,
            dataType: 'JSON',
            method: 'DELETE',
        })
    },

    searchUsers: queryVal => {
        return $.ajax({
            url: '/users/search',
            dataType: 'JSON',
            data: queryVal,
            method: 'GET'
        })
    }
    
}
module.exports = APIUtil;