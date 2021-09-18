/**
 * mysql 数据库配置文件
 */
let dbConfig = {
  port: 3306,
  dialect: 'mysql',
  timezone: '+08:00', // 东八时区
  database : 'sequelize-association',
  host : '127.0.0.1',
  user : 'root',
  password : '123456',
  logging: true
}

module.exports = dbConfig
