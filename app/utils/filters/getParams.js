/**
 * 查询数据时的参数字段处理
 */
const sequelize = require('sequelize')

// 格式化时间 - https://www.cnblogs.com/iPing9/p/13539434.html
const getFormateDate = (arr = []) => {
  let list = ['createTime', 'updateTime'].concat(arr), dateList = []
  for (let i of list) {
    dateList.push([sequelize.Sequelize.fn('date_format', sequelize.Sequelize.col(i), '%Y-%m-%d %H:%i:%s'), i])
  }
  return dateList
}

/**
 * page 默认为 1，pageSize 默认为 10，最大不超过 100
 * offset = (page - 1) * pageSize, limit = pageSize
 * @param {Object} query 
 */
const getPage = (query) => {
  let { page, pageSize } = query
  page = Number(page) || 1
  pageSize = Number(pageSize) || 10
  pageSize = pageSize > 100 ? 100 : pageSize
  return { offset: (page - 1) * pageSize, limit: pageSize, page, pageSize }
}

/**
 * 查询数据时排除被删除的行
 * @param {Object} params 
 */
const getWhere = (params = {}) => {
  return { isDelete: 0, ...params }
}

/**
 * 查询数据时排除的字段
 * @param {Array} arr 
 */
const getExclude = (arr = []) => {
  return ['isDelete', ...arr]
}

/**
 * 查询数据时包含的字段
 * @param {Array} arr 
 */
const getInclude = (dateList = [], arr = []) => {
  return getFormateDate(dateList).concat(arr)
}

module.exports = {
  getPage,
  getWhere,
  getExclude,
  getInclude
}
