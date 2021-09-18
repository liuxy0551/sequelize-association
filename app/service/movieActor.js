const DB = require('../utils/mysql/db')
const setCtxBody = require('../utils/setCtxBody')
const { getPage, getWhere, getExclude } = require('../utils/filters/getParams')

class MovieActorService {
    async getMovieListWithActors (ctx) {
        try {
            const { offset, limit, page, pageSize } = getPage(ctx.query)
            const { count, rows } = await DB.Movie.findAndCountAll({
                where: getWhere(),
                attributes: {
                    exclude: getExclude()
                },
                include: [
                    {
                        model: DB.Actor,
                        as: 'actorList',
                        required: false,
                        where: getWhere(),
                        attributes: {
                            exclude: getExclude(),
                        },
                        through: { attributes: [] }
                    }
                ],
                offset,
                limit,
            })
            return setCtxBody(200, rows, '成功', { total: count, page, pageSize })
        } catch (error) {
            return setCtxBody(500, error, '系统错误')
        }
    }

    async getActorListWithMovies (ctx) {
        try {
            const { offset, limit, page, pageSize } = getPage(ctx.query)
            const { count, rows } = await DB.Actor.findAndCountAll({
                where: getWhere(),
                attributes: {
                    exclude: getExclude()
                },
                include: [
                    {
                        model: DB.Movie,
                        as: 'movieList',
                        required: false,
                        where: getWhere(),
                        attributes: {
                            exclude: getExclude(['MovieActor']),
                        },
                        through: { attributes: [] }
                    }
                ],
                offset,
                limit,
            })
            return setCtxBody(200, rows, '成功', { total: count, page, pageSize })
        } catch (error) {
            return setCtxBody(500, error, '系统错误')
        }
    }
}

module.exports = new MovieActorService()
