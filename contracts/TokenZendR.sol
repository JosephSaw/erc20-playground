// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/Pausable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract TokenZendR is Ownable, Pausable {
    mapping(string => address) private _tokenAddresses;

    constructor() public {
        _tokenAddresses["Bear"] = address(
            0x8A301CDAD7d8c4e7C36a9c0eF3CB31FE139673AA
        );
    }

    function getContractBearTokenBalance() public view returns (uint256) {
        return IERC20(_tokenAddresses["Bear"]).balanceOf(address(this));
    }

    function withdrawBearToken() public onlyOwner {
        IERC20 BearToken = IERC20(_tokenAddresses["Bear"]);
        BearToken.transfer(owner(), BearToken.balanceOf(address(this)));
    }

    function addTokenAddress(string memory tokenSymbol, address tokenAddress)
        external
        onlyOwner
    {
        _tokenAddresses[tokenSymbol] = tokenAddress;
    }

    function getTokenAddress(string memory tokenSymbol)
        external
        view
        onlyOwner
        returns (address)
    {
        return _tokenAddresses[tokenSymbol];
    }

    function getTokenBalance(string memory tokenSymbol)
        public
        view
        onlyOwner
        returns (uint256)
    {
        return IERC20(_tokenAddresses[tokenSymbol]).balanceOf(owner());
    }
}
