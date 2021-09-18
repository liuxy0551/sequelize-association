const DB = require('../utils/mysql/db')
const setCtxBody = require('../utils/setCtxBody')
const { getPage, getWhere, getExclude } = require('../utils/filters/getParams')

class ProvinceService {
    // 获取省份列表
    async getProvinceList (ctx) {
        try {
            const { offset, limit, page, pageSize } = getPage(ctx.query)
            const { count, rows } = await DB.Province.findAndCountAll({
                where: getWhere(),
                attributes: {
                    exclude: getExclude(),
                },
                include: [
                    {
                        model: DB.City,
                        as: 'cityList',
                        required: true,
                        where: getWhere(),
                        attributes: {
                            exclude: getExclude(),
                        },
                    }
                ],
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

module.exports = new ProvinceService()
