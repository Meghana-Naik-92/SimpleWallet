# 🪙 SimpleWallet

A simple beginner project where I built a basic crypto wallet using a smart contract and a minimal frontend.

The goal was to understand how a website can interact with the blockchain.

---

## 🚀 Problem Statement

Create a basic wallet system where:

- Anyone can deposit ETH  
- Only the owner can withdraw  
- Balance is stored on the blockchain (not a traditional database)  

💡 Think of it like a **transparent glass box**:

- Anyone can put money in  
- Everyone can see the balance  
- Only the owner can take money out  

---

## 🧠 What I Built

### 1. Smart Contract (Core Logic)
- Written in Solidity  
- Stores ETH sent to it  
- Restricts withdrawal to owner  

```solidity
require(msg.sender == owner);
```

### 2. Simple Frontend
- Built using HTML, CSS, JavaScript  
- Minimal UI with:
  - Connect Wallet  
  - Deposit ETH  
  - Withdraw ETH  

### 3. Blockchain Integration
- Used **Ethers.js** to interact with contract  
- Used **MetaMask** for:
  - Wallet connection  
  - Transaction approval  

---

## 🏗️ Project Structure

```
📁 contracts/
   └── SimpleWallet.sol

📁 scripts/
   └── deploy_with_ethers.ts

📁 artifacts/

📄 index.html
📄 README.md
```

---

## ⚙️ Basic Flow

1. User clicks **Connect Wallet**  
2. MetaMask asks for permission  
3. User can:
   - Deposit ETH  
   - Withdraw ETH (only owner)  
4. Balance is fetched from blockchain and displayed in UI  

---

## 🧪 Testing

| Type        | Scenario               | Result                                                                |
|------------|----------------------|----------------------------------------------------------------------|
| ✅ Positive | Connect Wallet        | Wallet connected and address displayed on UI                         |
| ✅ Positive | Deposit ETH           | Transaction confirmed via MetaMask and recorded on blockchain        |
| ✅ Positive | Balance Update        | Contract balance updated and reflected in UI                         |
| ❌ Negative | Unauthorized Withdraw | Transaction failed for non-owner                                     |
| ❌ Negative | Insufficient Funds    | MetaMask blocked the transaction                                     |
| ❌ Negative | Empty Input           | Deposit prevented or transaction failed                              |

---

## 🛠️ Tech Used

- Solidity  
- Remix IDE  
- Ethers.js  
- MetaMask  
- Sepolia Testnet  
- HTML / CSS / JavaScript  

---

## 💡 What I Learned

- Writing and deploying smart contracts  
- Connecting MetaMask with a website  
- Handling blockchain transactions  
- Using Ethers.js for frontend interaction  

---

## ⚠️ Note

This is a **beginner project**  
❗ Not secure or production-ready  

---

## 📌 Future Improvements

- Improve UI/UX  
- Add better error handling  
- Show transaction history  
- Enhance usability  

---

## 🙌 Final Note

This is one of my first blockchain projects.  
Still learning and exploring 🚀  
