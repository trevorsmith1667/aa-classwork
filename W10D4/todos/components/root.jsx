import React from 'react'
import {Provider} from 'react-redux'

const Root = () => {
    return(
        <Provider store={props.store}>
            <App/>
        </Provider>

    )

}

export default Root