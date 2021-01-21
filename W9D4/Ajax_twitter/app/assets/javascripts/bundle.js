/******/ (() => { // webpackBootstrap
/******/ 	var __webpack_modules__ = ({

/***/ "./frontend/api_util.js":
/*!******************************!*\
  !*** ./frontend/api_util.js ***!
  \******************************/
/***/ ((module) => {

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

/***/ }),

/***/ "./frontend/follow_toggle.js":
/*!***********************************!*\
  !*** ./frontend/follow_toggle.js ***!
  \***********************************/
/***/ ((module, __unused_webpack_exports, __webpack_require__) => {

const APIUtil = __webpack_require__(/*! ./api_util */ "./frontend/api_util.js");

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

/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		if(__webpack_module_cache__[moduleId]) {
/******/ 			return __webpack_module_cache__[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId](module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/************************************************************************/
(() => {
/*!*****************************!*\
  !*** ./frontend/twitter.js ***!
  \*****************************/
const FollowToggle = __webpack_require__(/*! ./follow_toggle */ "./frontend/follow_toggle.js")


$(() => {
    $(".follow-toggle").each((index, button) => {
        debugger
        new FollowToggle(button);
    })
})
})();

/******/ })()
;
//# sourceMappingURL=bundle.js.map