// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract LBCToken is ERC20, Ownable {
    constructor(string memory name, string memory symbol, uint amount, address receiver) ERC20(name, symbol) {
        _mint(receiver, amount * 1 ether);
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
