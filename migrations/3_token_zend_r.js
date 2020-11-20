const TokenZendR = artifacts.require("TokenZendR")
TokenZendR.numberFormat = "BigNumber"
module.exports = function (deployer) {
  // Use deployer to state migration tasks.
  deployer.deploy(TokenZendR);
};
