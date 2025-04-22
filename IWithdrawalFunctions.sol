// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title IWithdrawalFunctions
 */
interface IWithdrawalFunctions {
    /**
     * @notice Withdraw yield
     */
    function withdrawYield() external returns (uint256);
    
    /**
     * @notice Withdraw full amount
     */
    function withdrawFull() external returns (uint256);
} 
