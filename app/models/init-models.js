var DataTypes = require("sequelize").DataTypes;
var _Chinese = require("./Chinese");
var _City = require("./City");
var _IDNumber = require("./IDNumber");
var _Province = require("./Province");

function initModels(sequelize) {
  var Chinese = _Chinese(sequelize, DataTypes);
  var City = _City(sequelize, DataTypes);
  var IDNumber = _IDNumber(sequelize, DataTypes);
  var Province = _Province(sequelize, DataTypes);


  return {
    Chinese,
    City,
    IDNumber,
    Province,
  };
}
module.exports = initModels;
module.exports.initModels = initModels;
module.exports.default = initModels;
