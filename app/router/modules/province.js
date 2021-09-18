/**
 * 一对多
 * 一个省份 (Province) 有多个市 (City) 
 */
const Router = require('koa-router')
const ProvinceController = require('../../controller/province')
const Province = new Router()

Province.get('/getProvinceList', ProvinceController.getProvinceList)

module.exports = Province
