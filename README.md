# DeFi Investment Contract Operation Guide

This project provides a complete operation guide for DeFi investment contracts, including detailed explanations of investment and withdrawal functions.

## 📋 Operation Guide Directory

### 🔗 Quick Navigation

| Operation Type | Guide Document | Description |
|---------|---------|------|
| 💰 **Investment Operation** | [📖 Investment Contract Guide](./investment-contract-guide-en.md) | Complete investment process, including environment configuration, contract connection, USDC authorization, and investment execution |
| 💸 **Withdrawal Operation** | [📖 Withdrawal Usage Guide](./withdrawal-usage-guide.md) | Detailed withdrawal process, including yield withdrawal and full withdrawal functions |

---

## 🚀 Core Features Overview

### Investment Features
- **Minimum Investment**: 100 USDC
- **Maximum Investment**: 150,000 USDC
- **Yield Source**: AAVE protocol lending yield
- **Fund Security**: Stored in AAVE protocol

### Withdrawal Features
- **Yield Withdrawal**: No fees, principal continues generating yield
- **Full Withdrawal**: 2% fee, withdraws principal + yield

---

## 🏗️ Contract Information

- **Contract Address**: `0x303c0CA64bE04600DC892CbDA1E8C7E1E987Fa24`
- **Network**: BSC Mainnet (Chain ID: 56)
- **USDC Token Address**: `0x8AC76a51cc950d9822D68b83fE1Ad97B32Cd580d`

---

## 📝 Key File Description

### Smart Contract Interface
- `IWithdrawalFunctions.sol` - Solidity interface file for withdrawal functions

### Operation Guide Documents
- `investment-contract-guide-en.md` - Complete investment operation guide (English)
- `withdrawal-usage-guide.md` - Withdrawal function usage guide (English)

---

## ⚡ Quick Start

### New User Investment Process
1. 📱 [Configure Environment](./investment-contract-guide-en.md#prerequisites) - Connect wallet to BSC Mainnet
2. 🔑 [Authorize USDC](./investment-contract-guide-en.md#step-3-usdc-approval) - Authorize contract to use your USDC
3. 💰 [Execute Investment](./investment-contract-guide-en.md#step-4-make-investment) - Invest minimum 100 USDC
4. ✅ [Confirm Status](./investment-contract-guide-en.md#step-5-confirm-investment-status) - Check transaction status on BSCScan

### Existing Investor Withdrawal Process
1. 🌐 [Connect to Remix](./withdrawal-usage-guide.md#setup-in-remix) - Set up Remix environment
2. 🔗 [Load Contract](./withdrawal-usage-guide.md#interacting-with-an-existing-contract) - Connect to existing contract
3. 💸 [Execute Withdrawal](./withdrawal-usage-guide.md#using-the-functions) - Choose yield withdrawal or full withdrawal

---

## 🛡️ Security Reminders

### Fund Security Mechanisms
- **💼 Fund Storage**: Your USDC funds will be stored in the AAVE protocol
- **🔐 Authorization Mechanism**: Each investment requires only a single USDC approval, which can be revoked anytime
- **📖 Code Transparency**: All smart contract codes are completely open source
- **🛡️ Security Audit**: Contracts use OpenZeppelin standard libraries

### Pre-Operation Checks
- ✅ Carefully verify contract address accuracy
- ✅ Ensure connection to the correct BSC Mainnet
- ✅ Have sufficient BNB in wallet for transaction fees
- ✅ Recommended to test functionality with small amounts first

---

## 🆘 Getting Help

If you encounter issues during usage:

1. 📊 [Check Transaction Status](https://bscscan.com) - Confirm transaction details on BSCScan
2. 📖 Refer to the corresponding operation guide documents
3. 🔍 Confirm contract address is correct
4. 💬 Contact the project team for technical support

---

## ⚠️ Disclaimer

Using this investment contract involves risks, including but not limited to smart contract risks and market risks. Please invest with full understanding of the risks. The project team is not responsible for any losses.

---

*Document updated: January 2025* 
