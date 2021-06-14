pragma solidity ^0.5.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Pausable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";
import "@openzeppelin/contracts/ownership/Ownable.sol";

contract WakandaCoin is ERC20, ERC20Detailed, ERC20Burnable, ERC20Pausable, Ownable{
	constructor() public ERC20Detailed("WakandaCoin", "WAKC", 18) {
		_mint(msg.sender,1000000000000000 * (10 ** uint256(decimals())));
	}
}

