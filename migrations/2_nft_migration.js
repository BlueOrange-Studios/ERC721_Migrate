const MarmalContract = artifacts.require("Marmal");

module.exports = function (deployer) {
  deployer.deploy(MarmalContract);
};