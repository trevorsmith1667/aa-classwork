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
    }
    
}
module.exports = APIUtil;