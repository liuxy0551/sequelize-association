const ChineseService = require('../service/Chinese')

class ChineseController {
    // 获取中国公民列表
    async getChinese (ctx) {
        ctx.body = await ChineseService.getChinese(ctx)
    }
}

module.exports = new ChineseController()
