// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MeuToken {
    string public symbol;
    string public name;

    address public owner;

    uint256 public totalSupply;

    mapping(address => uint256) _balances;

    constructor(string memory _symbol, string memory _name) {
        symbol = _symbol;
        name = _name;
        owner = msg.sender;
    }

    function balanceOf(address addr) public view returns (uint256 balance) {
        balance = _balances[addr];
    }

    function mint(address addr, uint256 value) public {
        require(msg.sender == owner, "MeuToken: Mensagem de erro");
        _balances[addr] = _balances[addr] + value;
    }

}