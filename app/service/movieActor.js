const { Op } = require('sequelize')
const db = require('../utils/mysql/db')
const setCtxBody = require('../utils/setCtxBody')
const { getPage, getWhere, getExclude, getInclude } = require('../utils/filters/getParams')

class MovieActorService {
    // 获取电影演员列表
    async getMovieListWithActors (ctx) {
        try {
            const { offset, limit, page, pageSize } = getPage(ctx.query)
            const { count, rows } = await db.Movie.findAndCountAll({
                where: getWhere(),
                attributes: {
                    exclude: getExclude(),
                    include: getInclude()
                },
                offset,
                limit,
                raw: true
            })
            return setCtxBody(200, rows, '成功', { total: count, page, pageSize })
        } catch (error) {
            return setCtxBody(500, error, '系统错误')
        }
    }
}

module.exports = new MovieActorService()
