/**
 * 多对多
 */
const Router = require('koa-router')
const MovieActorController = require('../../controller/movieActor')
const MovieActor = new Router()

MovieActor.get('/getMovieListWithActors', MovieActorController.getMovieListWithActors)
MovieActor.get('/getActorListWithMovies', MovieActorController.getActorListWithMovies)

module.exports = MovieActor
