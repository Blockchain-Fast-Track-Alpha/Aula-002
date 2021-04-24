// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MeuToken {
    string public symbol;
    string public name;

    constructor(string memory _symbol, string memory _name) {
        symbol = _symbol;
        name = _name;
    }
}