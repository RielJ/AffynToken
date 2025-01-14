// contracts/AffynToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.5.0;

import "./token/ERC20/ERC20.sol";
import "./token/ERC20/ERC20Detailed.sol";

/**
 * @title AffynToken
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `ERC20` functions.
 */
contract AffynToken is Context, ERC20, ERC20Detailed {

    /**
     * @dev Constructor that gives _msgSender() all of existing tokens.
     */

    constructor (string memory name, string memory symbol, uint256 initSupply) 
        public ERC20Detailed(name, symbol, 18) {
        _mint(_msgSender(), initSupply * (10 ** uint256(decimals())));
    }
}
