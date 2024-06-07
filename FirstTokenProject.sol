/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

contract my_First_Token {
// Public Variables here
    string public token_name;
    string public token_abbreviation;
    uint public total_token_supply;

// Mapping Function
    mapping (address => uint) public token_balance;

// Mint Function
    function mint_token(address _receiver, uint _value) public {
        require(_value > 0, "Value must be greater than 0");
        total_token_supply += _value;
        token_balance[_receiver] += _value;
    }

// Burn Function
    function burn_token(address _from, uint _value) public {
        require(_value > 0, "Value must be greater than 0");
        require(token_balance[_from] >= _value, "Insufficient balance to burn");
        total_token_supply -= _value;
        token_balance[_from] -= _value;
    }
}
