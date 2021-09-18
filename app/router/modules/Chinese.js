/**
 * 一对一
 */
const Router = require('koa-router')
const ChineseController = require('../../controller/Chinese')
const Chinese = new Router()

Chinese.get('/getChinese', ChineseController.getChinese)

module.exports = Chinese
