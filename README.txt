🪙 SimpleWallet

A simple beginner project where I tried building a basic crypto wallet using a smart contract and a small frontend.

The goal was to understand how a website can interact with the blockchain.

🚀 Problem Statement
Create a basic wallet system where:

Anyone can send (deposit) ETH
Only the owner can withdraw it
The balance is stored on the blockchain instead of a normal database

You can think of it like a transparent glass box where anyone can drop money in and everyone can see how much is inside, but only the owner has the ability to open it and take the money out.

🧠 What I Tried to Build

This project is my attempt to connect three parts together:

1. Smart Contract (Basic Logic)
Written in Solidity
Stores ETH sent to it
Allows withdrawal only for the owner
require(msg.sender == owner);
2. Simple Frontend
Built using HTML, CSS, and JavaScript
Very minimal UI (kept it simple)
Has buttons to:
Connect wallet
Deposit ETH
Withdraw ETH
3. Connecting Frontend to Blockchain
Used Ethers.js to interact with the contract
Used MetaMask to:
Connect user wallet
Approve transactions

🏗️ Project Structure
📁 contracts/
   └── SimpleWallet.sol

📁 scripts/
   └── deploy_with_ethers.ts

📁 artifacts/

📄 index.html

📄 README.md

⚙️ Basic Flow
User clicks Connect Wallet
MetaMask asks for permission
User can:
Deposit ETH into contract
Withdraw (only if owner)
Balance is fetched from blockchain and shown in UI


🧪 Testing 

Type	Scenario	Result
✅ Positive	Connect Wallet	Wallet connected and address displayed on UI
✅ Positive	Deposit ETH	Transaction confirmed via MetaMask and recorded on-chain
✅ Positive	Balance Update	Contract balance updated and reflected in UI
❌ Negative	Unauthorized Withdraw	Transaction failed for non-owner
❌ Negative	Insufficient Funds	MetaMask blocked the transaction
❌ Negative	Empty Input	Deposit prevented or transaction failed


🛠️ Tech Used
Solidity
Remix IDE
Ethers.js
MetaMask
Sepolia Testnet
HTML / CSS / JavaScript


💡 What I Learned

From this project, I got a basic idea of:

How to write and deploy a smart contract
How MetaMask connects a user to a website
How transactions (deposit/withdraw) are triggered
How frontend can interact with blockchain using Ethers.js

I’m still new and learning deeper concepts step by step.

⚠️ Note
This is a beginner learning project.
Not secure or ready for real-world use.

📌 Future Improvements
Improve UI design
Add better error handling
Show transaction history
Make it more user-friendly


🙌 Final Note
This was one of my first attempts at building something related to blockchain.
Still learning, still exploring 👍
