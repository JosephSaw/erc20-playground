const CubToken = artifacts.require("CubToken")
module.exports = function (deployer) {
  // Use deployer to state migration tasks.
  deployer.deploy(CubToken);
};
