
import configureStore from './store/store';





document.addEventListener("DOMContentLoaded", () => {
    window.store = configureStore(); // Creates Store for us
})
