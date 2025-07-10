# MiniDoge Investment Contract User Guide

## 🚀 Quick Start

**5-Minute Investment Process:**
1. 📱 Connect wallet to BSC Mainnet
2. 💰 Prepare USDC and BNB (for transaction fees)
3. 🔑 Approve USDC for investment contract in Remix
4. 💎 Execute investment transaction (minimum 100 USDC)
5. ✅ Confirm success with transaction hash on BSCScan

**Important Reminder:** Please carefully verify contract addresses to ensure fund security!

---

## Overview

This guide will walk you through how to interact with the MiniDoge Investment Contract deployed on BSC Mainnet using Remix IDE. The investment contract allows users to invest USDC and generate yield through the AAVE protocol.

## 🔒 Security Assurance

### Fund Safety Mechanisms
- **💼 Fund Storage**: Your USDC funds will be stored in the AAVE protocol, one of the most mature lending protocols in DeFi
- **🥞 Liquidity Support**: Project pool funds are stored on PancakeSwap, ensuring sufficient liquidity
- **🔐 Authorization Mechanism**: Each investment requires only a single USDC approval, which you can revoke at any time
- **📖 Code Transparency**: All smart contract codes are completely open source and can be viewed and verified on BSCScan
- **🛡️ Security Audit**: Contracts use OpenZeppelin standard libraries and have undergone rigorous security testing

### Contract Verification Methods
1. View contract source code on BSCScan
2. Verify the contract is marked as "Verified Contract"
3. Check contract creation time and deployer address
4. Confirm contract address matches officially published address

## Contract Information

- **Contract Address**: `0x303c0CA64bE04600DC892CbDA1E8C7E1E987Fa24`
- **Network**: BSC Mainnet (Chain ID: 56)
- **USDC Token Address**: `0x8AC76a51cc950d9822D68b83fE1Ad97B32Cd580d`
- **Minimum Investment**: 100 USDC
- **Maximum Investment**: 150,000 USDC
- **Withdrawal Fee**: 2%

## Prerequisites

### 1. Environment Setup

1. Open [Remix IDE](https://remix.ethereum.org)
2. Ensure your wallet is connected to BSC Mainnet
3. Ensure you have sufficient USDC and BNB (for transaction fees) in your wallet

### 2. Add BSC Mainnet to Your Wallet

If your wallet hasn't configured BSC Mainnet yet, please add the following configuration:

- **Network Name**: BSC Mainnet
- **RPC URL**: `https://bsc-dataseed.binance.org/`
- **Chain ID**: 56
- **Currency Symbol**: BNB
- **Block Explorer**: `https://bscscan.com`

## 📋 Detailed Step-by-Step Instructions

```
🌐 Environment Setup → 🔗 Connect Contract → 🔑 USDC Approval → 💰 Execute Investment → ✅ Confirm Success → 💸 Withdraw Yield
```

### Step 1: Prepare Contract in Remix

> 💡 **Tip**: Make sure you're connected to the correct BSC Mainnet to avoid operating on wrong networks

1. Create a new file in Remix and copy the following ABI interface:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IInvestmentContract {
    function invest(uint256 amount) external;
    function withdrawYield() external;
    function withdrawAll() external;
}

interface IERC20 {
    function approve(address spender, uint256 amount) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
    function allowance(address owner, address spender) external view returns (uint256);
}
```

2. Compile the contract (Ctrl + S)

### Step 2: Connect to Deployed Contract

> ⚠️ **Security Check**: Please verify the contract address accuracy to prevent connecting to malicious contracts

1. Switch to "Deploy & Run Transactions" tab
2. Select "Injected Provider - MetaMask" in "Environment"
3. Confirm connection to BSC Mainnet ✅ **Chain ID: 56**
4. Select the interface you just created in the "Contract" dropdown
5. Enter the investment contract address in "At Address" field: `0x303c0CA64bE04600DC892CbDA1E8C7E1E987Fa24`
6. Click "At Address" button

**Verification Steps:**
- 🔍 Confirm contract is verified on [BSCScan](https://bscscan.com/address/0x303c0CA64bE04600DC892CbDA1E8C7E1E987Fa24)
- ✅ Check contract is marked as "Contract" with green checkmark

### Step 3: USDC Approval

> 🔒 **Security Tip**: This is a single approval for the specific amount you want to invest, and can be revoked at any time

Before investing, you need to approve the investment contract to use your USDC:

1. Connect to the USDC contract using the same method: `0x8AC76a51cc950d9822D68b83fE1Ad97B32Cd580d`
2. Find the `approve` function
3. Enter parameters:
   - `spender`: `0x303c0CA64bE04600DC892CbDA1E8C7E1E987Fa24` (Investment contract address)
   - `amount`: Amount of USDC you want to approve (in wei with 18 decimals)

**💱 Amount Conversion Table:**
```
 100 USDC = 100000000000000000000
 500 USDC = 500000000000000000000
1000 USDC = 1000000000000000000000
5000 USDC = 5000000000000000000000
```

4. Click "transact" to execute approval
5. 📋 **Record transaction hash** for future reference

**🛡️ Approval Security Notes:**
- ✅ Only approve the amount you plan to invest
- ✅ Funds remain in your wallet after approval
- ✅ You can revoke approval by setting it to 0

### Step 4: Make Investment

> 💰 **Investment Limits**: Minimum 100 USDC, Maximum 150,000 USDC

1. Find the `invest` function in the investment contract
2. Enter investment amount (in wei with 18 decimals):
   - Minimum 100 USDC: `100000000000000000000`
   - Maximum 150,000 USDC: `150000000000000000000000`
3. Click "transact" to execute investment
4. ⏳ Confirm transaction and wait for block confirmation (usually takes 1-2 minutes)
5. 📝 **Important: After transaction completion, copy the generated Transaction Hash**

### Step 5: Confirm Investment Status

> ✅ **Success Indicator**: Use transaction hash to confirm on blockchain explorer

**Confirmation Steps:**
1. Open [BSCScan](https://bscscan.com)
2. Paste your transaction hash in the search box
3. View transaction details to confirm whether the investment was successfully executed
4. **Status Indicators:**
   - 🟢 **Success** = Investment successful
   - 🔴 **Failed** = Investment failed, need to retry
   - 🟡 **Pending** = Transaction being processed

**📊 Where Your Funds Go After Successful Investment:**
- 💼 USDC Funds → AAVE Protocol (starts generating yield)
- 🏦 Yield Source → AAVE lending interest
- 📈 Yield Accumulation → Real-time calculation, withdrawable anytime

### Step 6: Withdraw Funds

> 💸 **Withdrawal Info**: Yield withdrawal has no fees, full withdrawal charges 2% fee

#### 🎯 Withdraw Yield (Keep Principal)

**Advantage**: No fees, keep investment generating yield

1. Use the `withdrawYield` function
2. No parameters required
3. Click "transact"
4. ✅ System will automatically calculate and withdraw all available yield
5. 💰 Yield transfers directly to your wallet

#### 🏦 Full Withdrawal (Principal + Yield)

**Notice**: 2% fee charged, investment ends

1. Use the `withdrawAll` function
2. No parameters required
3. Click "transact"
4. 💳 System will withdraw all principal and yield, minus 2% withdrawal fee
5. 🔚 Investment contract relationship ends

**💡 Withdrawal Strategy Recommendations:**
- 🔄 **Regular Yield Withdrawal**: Keep principal generating continued yield
- 🎯 **Emergency Situations**: Use full withdrawal for quick fund recovery
- 📊 **Fee Comparison**: Yield withdrawal 0% vs Full withdrawal 2%

## Important Notes

### Security Reminders

1. **Double Check**: Carefully verify contract addresses and parameters before executing any transaction
2. **Small Test**: Recommend starting with a small investment to test functionality
3. **Gas Fees**: Ensure sufficient BNB in wallet for transaction fees
4. **Authorization Management**: Regularly check and manage token approvals

### Frequently Asked Questions

**Q: Why did my investment transaction fail?**
A: Possible reasons:
- Insufficient USDC balance
- Insufficient approval amount
- Investment amount below minimum or above maximum
- Insufficient gas fees

**Q: How do I calculate the USDC amount to input?**
A: USDC uses 18 decimal places, calculation formula:
`Actual Amount × 10^18`
Example: 100 USDC = 100 × 10^18 = `100000000000000000000`

**Q: How often are yields updated?**
A: Yields are accumulated in real-time, you can check the latest yield status anytime.

**Q: How is the withdrawal fee calculated?**
A: 2% fee is only charged when using `withdrawAll` function, no fee for yield-only withdrawals.

## Support

If you encounter issues during usage, please:

1. Check transaction status: [BSCScan](https://bscscan.com)
2. Confirm contract addresses are correct
3. Contact the project team for technical support

## Disclaimer

Using this investment contract involves risks, including but not limited to smart contract risks and market risks. Please invest with full understanding of the risks. The project team is not responsible for any losses.

---

*Document generated: January 2025*
*Contract version: 3.0.0* 