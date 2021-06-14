const Token = artifacts.require("./WakandaCoin.sol");

module.exports =  async function (deployer, network, accounts) {
	
  await deployer.deploy(Token);
  const deployedToken = await Token.deployed();

};