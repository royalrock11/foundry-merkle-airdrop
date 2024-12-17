//SPDX-License-Identifier: MIT

pragma solidity ^0.8.24;

import {ERC20} from "lib/openzepplin-contracts/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "lib/openzepplin-contracts/contracts/access/Ownable.sol";

contract BagelToken is ERC20, Ownable {
    constructor() ERC20("Bagel", "BGL") {}

    function mint(address to, uint256 tokenId) external onlyOwner {
        _mint(to, tokenId);
    }
}
