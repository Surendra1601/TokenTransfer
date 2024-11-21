const TokenTransfer = artifacts.require("TokenTransfer");

module.exports = function (deployer) {
  deployer.deploy(TokenTransfer, 1000); // Deploy with an initial supply of 1000 TT tokens
};
