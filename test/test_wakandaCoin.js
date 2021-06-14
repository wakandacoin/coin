const BigNumber = web3.BigNumber;

const WakandaCoin = artifacts.require("WakandaCoin.sol");
const BN = require("bn.js");

require("chai")
	.use(require("chai-bignumber")(BigNumber))
	.should();

contract('WakandaCoin', accounts => {

	const _name = "WakandaCoin";
	const _symbol = "WAKC";
	const _decimals = 18;
	const _totalSupply = new BN("1000000000000000");

	beforeEach(async function(){
		this.coin = await WakandaCoin.new();
	});

	describe("Coin attributes", function(){

		it("Has correct name", async function(){			
			const name = await this.coin.name();
			name.should.equal(_name);
		});

		it("Has correct symbol", async function(){			
			const symbol = await this.coin.symbol();
			symbol.should.equal(_symbol);
		});	

		it("Has correct decimals", async function(){			
			var decimals = await this.coin.decimals();
			decimals = decimals.toNumber();
			decimals.should.be.bignumber.equal(_decimals);

		});	

		/*** THIS IS JUST TESTING **/

	});

});