// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TokenTransfer {
    address public owner;
    mapping(address => uint256) public balances;

    event Transfer(address indexed from, address indexed to, uint256 amount);

    constructor(uint256 initialSupply) {
        owner = msg.sender;
        balances[owner] = initialSupply;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can perform this action");
        _;
    }

    function transfer(address to, uint256 amount) public onlyOwner {
        require(balances[owner] >= amount, "Insufficient balance");
        balances[owner] -= amount;
        balances[to] += amount;

        emit Transfer(owner, to, amount);
    }
}
