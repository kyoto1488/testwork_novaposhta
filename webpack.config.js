const path = require('path');
const webpack = require('webpack');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const postcssNormalize = require('postcss-normalize');
const UglifyJsPlugin = require('uglifyjs-webpack-plugin');
const isProduction = process.env.NODE_ENV === 'production';
const staticPath = path.resolve(__dirname, 'public', 'static');

const minimizers = [
    isProduction && new UglifyJsPlugin({
        exclude: /node_modules/
    })
].filter(Boolean);

module.exports = {
    mode: isProduction ? 'production' : 'development',
    entry: './resource/js/app.js',
    output: {
        path: staticPath,
        filename: 'bundle.js'
    },
    module: {
        rules: [
            {
                test: /\.js$/,
                use: [
                    require.resolve('babel-loader')
                ]
            },
            {
                test: /\.(sass|scss)$/,
                use: [
                    require.resolve('style-loader'),
                    MiniCssExtractPlugin.loader,
                    require.resolve('css-loader'),
                    {
                        loader: require.resolve('postcss-loader'),
                        options: {
                            // Necessary for external CSS imports to work
                            // https://github.com/facebook/create-react-app/issues/2677
                            ident: 'postcss',
                            plugins: () => [
                                require('postcss-flexbugs-fixes'),
                                require('postcss-preset-env')({
                                    autoprefixer: {
                                        flexbox: 'no-2009',
                                    },
                                    stage: 3,
                                }),
                                // Adds PostCSS Normalize as the reset css with default options,
                                // so that it honors browserslist config in package.json
                                // which in turn let's users customize the target behavior as per their needs.
                                postcssNormalize(),
                                isProduction && require('cssnano')({
                                    preset: 'default'
                                })
                            ].filter(Boolean)
                        },
                    },
                    require.resolve('sass-loader'),
                ]
            }
        ]
    },
    plugins: [
        new MiniCssExtractPlugin({
            publicPath: staticPath,
            filename: 'app.css'
        }),
        new webpack.DefinePlugin({
            'process.env.NODE_ENV': JSON.stringify(process.env.NODE_ENV)
        })
    ],
    optimization: {
        minimizer: minimizers
    }
};
