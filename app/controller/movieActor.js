const MovieActorService = require('../service/movieActor')

class MovieActorController {
    // 获取电影演员列表
    async getMovieListWithActors (ctx) {
        ctx.body = await MovieActorService.getMovieListWithActors(ctx)
    }
}

module.exports = new MovieActorController()
