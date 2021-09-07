const Koa = require('koa')
const bodyParser = require('koa-bodyparser')
const middles = require('./app/middleWares')
const router = require('./app/router')

const app = new Koa()
// 配置中间件，通过 bodyParser 获取 post 请求传递过来的参数
app.use(bodyParser())

// 启动自定义中间件
middles(app)

// 启动路由
router(app)

// app错误监听
app.on('error', (err) => {
  console.error('Server error: \n%s\n%s ', err.stack || '')
})

const appPort = 9000
app.listen(appPort, () => {
  console.log(`app runs on port ${ appPort }`)
})
