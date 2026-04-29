// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleWallet {
    address public owner;

    // Define Events here (at the top of the contract)
    event Deposited(address indexed sender, uint amount);
    event Withdrawn(uint amount);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    // Deposit Ether into contract
    function deposit() external payable {
        // Emit event when someone sends money
        emit Deposited(msg.sender, msg.value);
    }

    // Check contract balance
    function getBalance() external view returns (uint) {
        return address(this).balance;
    }

    // Withdraw specific amount to owner's wallet
    function withdraw(uint _amount) external onlyOwner {
        require(address(this).balance >= _amount, "Insufficient balance");

        (bool success, ) = payable(owner).call{value: _amount}("");
        require(success, "Transfer failed.");

        // Emit event after a successful withdrawal
        emit Withdrawn(_amount);
    }
}