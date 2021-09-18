var DataTypes = require("sequelize").DataTypes;
var _Actor = require("./Actor");
var _Chinese = require("./Chinese");
var _City = require("./City");
var _IDNumber = require("./IDNumber");
var _Movie = require("./Movie");
var _MovieActor = require("./MovieActor");
var _Province = require("./Province");

function initModels(sequelize) {
  var Actor = _Actor(sequelize, DataTypes);
  var Chinese = _Chinese(sequelize, DataTypes);
  var City = _City(sequelize, DataTypes);
  var IDNumber = _IDNumber(sequelize, DataTypes);
  var Movie = _Movie(sequelize, DataTypes);
  var MovieActor = _MovieActor(sequelize, DataTypes);
  var Province = _Province(sequelize, DataTypes);


  return {
    Actor,
    Chinese,
    City,
    IDNumber,
    Movie,
    MovieActor,
    Province,
  };
}
module.exports = initModels;
module.exports.initModels = initModels;
module.exports.default = initModels;
