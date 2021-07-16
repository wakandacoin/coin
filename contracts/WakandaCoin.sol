pragma solidity ^0.5.0;

import "https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts/v2.5.1/contracts/token/ERC20/ERC20.sol";
import "https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts/v2.5.1/contracts/token/ERC20/ERC20Burnable.sol";
import "https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts/v2.5.1/contracts/token/ERC20/ERC20Pausable.sol";
import "https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts/v2.5.1/contracts/token/ERC20/ERC20Detailed.sol";
import "https://raw.githubusercontent.com/OpenZeppelin/openzeppelin-contracts/v2.5.1/contracts/ownership/Ownable.sol";

contract WakandaCoin is ERC20, ERC20Detailed, ERC20Burnable, ERC20Pausable, Ownable{
    
    string internal constant _name = "WakandaCoin";
    string internal constant _symbol = "WAKC";
    uint8 internal constant _decimal = 18;
    
    uint256 internal constant tokenUnit = 10**18;
    uint256 internal constant oneQuadrillion = 10**15;
    uint256 internal constant oneBillion = 10**9;
    uint256 internal constant maxSupply = oneQuadrillion * tokenUnit;   
    
    
    constructor() public ERC20Detailed(_name, _symbol,_decimal) {
        _mint(msg.sender,maxSupply);
    }
}
