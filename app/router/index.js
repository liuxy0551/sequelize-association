/**
 * 模块化处理router
 */
const Router = require('koa-router')
const ChineseController = require('./modules/Chinese')
const MovieActorController = require('./modules/movieActor')
const router = new Router()

/**
 * 启动路由
 * allowedMethods, 在所有路由中间件最后调用, 此时根据 ctx.status 设置 response 响应头
 */
module.exports = app => {
  router.get('/', ctx => { ctx.body = 'hello world' })
  
  router.use('/api/v1', MovieActorController.routes(), MovieActorController.allowedMethods())
  router.use('/api/v1', ChineseController.routes(), ChineseController.allowedMethods())

  app.use(router.routes(), router.allowedMethods())
}
