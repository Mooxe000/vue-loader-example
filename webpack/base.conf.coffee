module.exports =
  entry: './src/main.coffee'
  output:
    path: './dist'
    publicPath: 'dist/'
    filename: 'build.js'
  module:
    loaders: [
      {
        test: /\.vue$/
        loader: 'vue'
      }
      # {
      #   test: /\.js$/
      #   loader: 'babel!eslint'
      #   exclude: /node_modules/
      # }
      {
        test: /\.coffee$/
        loader: 'coffee-loader'
        exclude: /node_modules/
      }
      {
        test: /\.(png|jpg|gif)$/
        loader: 'url'
        query: {
          limit: 10000
          name: '[name].[ext]?[hash]'
        }
      }
    ]
