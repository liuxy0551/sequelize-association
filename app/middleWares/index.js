/**
 * @file 中间件集合
 */
const error = require('./error')

/**
 * 中间件
 */
module.exports = (app) => {
  // error 放在所有中间件之前，就可以捕获它们所有的同步或者异步代码中抛出的异常
  const middleWares = [error]

  middleWares.forEach(middleware => {
    app.use(middleware)
  })
}
