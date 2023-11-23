module.exports = {
  chainWebpack: (config) => {
    config
      .plugin('html')
      .tap((args) => {
        args[0].title = '吴诚骏-七年经验-16619771137'
        return args
      })
  }
}
