const DB = require('../utils/mysql/db')
const setCtxBody = require('../utils/setCtxBody')
const { getPage, getWhere, getExclude } = require('../utils/filters/getParams')

class ChineseService {
    // 获取中国公民列表
    async getChinese (ctx) {
        try {
            const { offset, limit, page, pageSize } = getPage(ctx.query)
            const { count, rows } = await DB.Chinese.findAndCountAll({
                where: getWhere(),
                attributes: {
                    exclude: getExclude(),
                },
                include: [
                    {
                        model: DB.IDNumber,
                        as: "IDNumberInfo",
                        required: false,
                        where: getWhere(),
                        attributes: {
                            exclude: getExclude(),
                        },
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

module.exports = new ChineseService()
