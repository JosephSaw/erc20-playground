// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title BearToken is a basic ERC20 Token
 */

contract CubToken is ERC20, Ownable {
    constructor() public ERC20("CubToken", "Cub") {
        _mint(msg.sender, 100000000000000000000000);
    }
}
