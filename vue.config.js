const moment = require('moment')

module.exports = {
  chainWebpack: (config) => {
    config
      .plugin('html')
      .tap((args) => {
        const bd = [1994, 7, 28]
        const graduate = moment(bd).add(22, 'y')
        const now = moment()
        const year = now.diff(graduate, 'years')
        args[0].title = `吴诚骏-${year}年经验-16619771137`
        return args
      })
  }
}
