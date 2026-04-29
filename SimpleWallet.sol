// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleWallet {
    address public owner;

    constructor() {
        owner = msg.sender;   // Set deployer as owner
    }

    // Only owner can call certain functions
    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    // Deposit Ether into contract
    function deposit() external payable {}

    // Check contract balance
    function getBalance() external view returns (uint) {
        return address(this).balance;
    }

    // Withdraw specific amount to owner's wallet
    function withdraw(uint _amount) external onlyOwner {
        // Ensure the contract has enough funds before trying to withdraw
        require(address(this).balance >= _amount, "Insufficient balance");

        // Using .call instead of .transfer to avoid gas-related deprecation warnings
        (bool success, ) = payable(owner).call{value: _amount}("");
        require(success, "Transfer failed.");
    }
}