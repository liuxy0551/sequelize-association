const Sequelize = require('sequelize')
const initModels = require('../../models/init-models')
const { host, user, password, database, dialect, timezone, logging } = require('../../../config/db.config')
const options = {
    host,
    dialect,
    define: {
        timestamps: false
    },
    timezone,
    logging,
    dialectOptions: {
        dateStrings: true,
        typeCast: true
    } 
}
const sequelize = new Sequelize(database, user, password, options)

// 全量的 model
const models = initModels(sequelize)
const { Chinese, IDNumber, Province, City, Movie, Actor, MovieActor } = models

// 关系模型
Chinese.hasOne(IDNumber, { foreignKey: 'id', sourceKey: 'IDNumberId', as: 'IDNumberInfo' })
IDNumber.belongsTo(Chinese, { foreignKey: 'id', targetKey: 'IDNumberId' })
Province.hasMany(City, { as: 'cityList' })
City.belongsTo(Province, { foreignKey: 'id' })
Movie.belongsToMany(Actor, { through: MovieActor, as: 'actorList' })
Actor.belongsToMany(Movie, { through: MovieActor, as: 'movieList' })

module.exports = {
  ...models,
    sequelize,
    Sequelize
}
