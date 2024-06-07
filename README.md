# Project: Creating-First-Token
This is a straight forward Solidity-implemented ERC-20 token contract. Tokens can be created, destroyed, and their associated data can be stored by the contract.
## Requirements
1. The token's details are stored in public variables within the contract:
   - `token_name`: A string that serves as the token's name.
   - `token_abbreviation`: A string that holds the token's abbreviation.
   - `total_token_supply`: An unsigned integer that shows how much tokens are available overall.

2. A mapping of addresses to balances is included in the contract:
   - `token_balance`: A mapping that links addresses to their respective token balances.

3. The contract includes a mint function that adds a specified amount to both the "sender" address's balance and total supply:
   - Parameters:
     - `_address`: Tokens will be minted to the specified address.
     - `_value`: The amount of tokens to be issued.
   - Actions:
     - Increases the `total_token_supply` by `_value`.
     - Increases the `token_balance` of the `_address` by `_value`.
  
4. A burn function in the contract reduces the overall supply and the balance of the "sender" address by a specified amount:
   - Parameters:
     - `_address`: The address from which the tokens will be destroyed.
     - `_value`: The amount of tokens to be destroyed.
   - Actions:
     - Increases the `total_token_supply` by `_value`.
     - Increases the `token_balance` of the `_address` by `_value`.
    
## Usage
1. Launch the `my_First_Token` contract on an Ethereum network that is suitable to handle it or to deploy it.
2. After deployment, you may communicate with the contract by invoking the following functions:
   - `mint_token`: This generates new tokens and links them to an address.
   		- Parameters:
     		- `_address`: Tokens will be minted to the specified address.
     		- `_value`: The amount of tokens to be issued.
   - `burn_token`: Eliminates all tokens in circulation and the balance of a given address in order to destroy existing tokens.
   		- Parameters:
     		- `_address`: The address from which the tokens will be destroyed.
     		- `_value`: The amount of tokens to be destroyed.
    
## Authors
Vivek Garg

## License
This contract is licensed under the MIT License. SPDX-License-Identifier: MIT.
