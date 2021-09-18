const MovieActorService = require('../service/movieActor')

class MovieActorController {
    async getMovieListWithActors (ctx) {
        ctx.body = await MovieActorService.getMovieListWithActors(ctx)
    }

    async getActorListWithMovies (ctx) {
        ctx.body = await MovieActorService.getActorListWithMovies(ctx)
    }
}

module.exports = new MovieActorController()
