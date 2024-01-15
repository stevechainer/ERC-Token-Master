pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ThirdERC20Token is ERC20, ERC20Burnable, Ownable {
    constructor() ERC20("ThirdERC20Token", "TET") {
        _mint(msg.sender, 10 * (10 ** decimals()));
    }

    function mint(address account, uint256 amount) public onlyOwner {
        _mint(account, amount);
    }

    function burn(uint256 amount) public override {
        super.burn(amount);
    }

    function decimals() public view virtual override returns (uint8) {
        return 6;
    }

    function totalSupply() public view virtual override returns (uint256) {
        return 10000000;
    }
}
