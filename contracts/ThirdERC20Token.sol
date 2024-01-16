// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ThirdERC20Token is ERC20, ERC20Burnable, Ownable {
    uint256 private _initialSupply = 10_000_000;

    constructor() ERC20("ThirdERC20Token", "TET") {
        _mint(msg.sender, _initialSupply * (10 ** decimals()));
    }

    function mint(address account, uint256 amount) public onlyOwner {
        _mint(account, amount);
    }

    function burn(address account, uint256 amount) public onlyOwner {
        _burn(account, amount);
    }

    function decimals() public view virtual override returns (uint8) {
        return 6;
    }
}
