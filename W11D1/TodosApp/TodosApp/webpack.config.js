var path = require('path');
const { javascript } = require('webpack');

module.exports = {
    entry: "./frontend/todo_redux.jsx",
    output: {
        path: path.resolve(__dirname, "app","assets","javascripts" ),
        filename: './bundle.js',
    },
    module: {
        rules: [
            {
                test: [/\.jsx?$/],
                exclude: /(node_modules)/,
                use: {
                    loader: 'babel-loader',
                    query: {
                        presets: ['@babel/env', '@babel/react']
                    }
                },
            }
        ]
    },
    devtool: 'source-map',
    resolve: {
        extensions: ['.js', '.jsx', '*']
    }
};