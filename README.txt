🪙 SimpleWallet

A beginner-friendly crypto wallet dApp that allows users to deposit and withdraw ETH using a smart contract.
This project was built to understand how blockchain, smart contracts, and frontend applications connect together.

🚀 Problem Statement

Build a simple crypto wallet where:

Anyone can deposit ETH
Only the owner can withdraw
The balance is stored on the blockchain, not in a database

Think of it like a digital piggy bank placed in public—everyone can see the money, but only the owner can take it out.

🧠 What I Built

This project is a small attempt to explore how Web3 applications work by combining:

1. Smart Contract (Backend)
Written in Solidity
Stores and manages ETH

Ensures security using:

require(msg.sender == owner);
2. Frontend (UI)
Built with HTML + CSS + JavaScript
Minimal and clean interface
Allows users to:
Connect wallet
Deposit ETH
Withdraw ETH
3. Web3 Integration (Bridge)
Used Ethers.js to interact with the blockchain
Used MetaMask for wallet connection and transaction signing
🏗️ Project Structure
📁 contracts/
   └── SimpleWallet.sol

📁 scripts/
   └── deploy_with_ethers.ts

📁 artifacts/

📄 index.html

📄 README.md
⚙️ How It Works
Step 1: Connect Wallet
User clicks Connect Wallet
MetaMask asks for permission
Wallet address gets linked to the app
Step 2: Deposit ETH
User enters amount
Confirms transaction in MetaMask
ETH gets stored in the smart contract
Step 3: Withdraw ETH (Owner Only)
Only the contract owner can withdraw
If another account tries → transaction fails
Step 4: View Balance
Contract balance is fetched from blockchain
UI updates automatically
🧪 Testing Approach

I tested the project in 3 stages:

🔹 Remix VM (Local Testing)
Deployed using fake accounts
Tested deposit and withdrawal logic
Verified security (non-owner cannot withdraw)
🔹 Sepolia Testnet (Real Simulation)
Deployed using MetaMask
Used faucet ETH
Verified transactions on Etherscan
🔹 Frontend Testing
Connected wallet via browser
Tested real transactions through UI
Observed live balance updates
🛠️ Tech Stack
Solidity
Remix IDE
Ethers.js
MetaMask
Sepolia Testnet
HTML / CSS / JavaScript
💡 Key Learning

This project helped me understand:

How smart contracts actually control funds
Difference between Web2 and Web3 architecture
How frontend connects to blockchain
How transactions work (gas fees, confirmations, etc.)
⚠️ Note

This is a learning project built as a beginner exploration into Web3.
It is not production-ready and should not be used with real funds.

📌 Future Improvements
Better UI/UX
Show transaction history
Add error handling messages
Support multiple users (not just owner-based)
🙌 Final Thought

This was my first attempt at building something on blockchain.
Not perfect—but it helped me understand how things actually work beyond theory.
