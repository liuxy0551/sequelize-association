const ProvinceService = require('../service/province')

class ProvinceController {
    // 获取省份列表
    async getProvinceList (ctx) {
        ctx.body = await ProvinceService.getProvinceList(ctx)
    }
}

module.exports = new ProvinceController()
