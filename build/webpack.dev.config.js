var config = require('./webpack.base.config')

config.devtool = 'eval-source-map'

config.devServer = {
  noInfo: false
}

module.exports = config
