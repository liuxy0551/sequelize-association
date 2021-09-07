/**
 * 错误处理中间件，放在所有中间件之前，就可以捕获它们所有的同步或者异步代码中抛出的异常
 * @param  ctx koa ctx
 * @param next koa next 
 */
const setCtxBody = require('../utils/setCtxBody')

module.exports = async (ctx, next) => {
  try {
    // Node标识
    ctx.set('X-Proxy', 'Node Server')
    await next()
  } catch (error) {
    ctx.status = error.status || 500
    console.log(ctx.status, error)
    ctx.body = setCtxBody(500, error, '系统错误')
    ctx.app.emit('error', error, ctx)
  }
}
