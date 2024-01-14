# EvmMod1 Smart Contract

## Overview

The `EvmMod1` smart contract is designed to handle the evaluation of a score on the Ethereum Virtual Machine (EVM). It includes a mechanism to ensure that only the owner of the contract can perform evaluations.

## Features

- **EvaluationScore**: A public variable that holds the evaluated score.
- **Owner**: An address variable representing the owner of the contract.
- **Evaluate(uint _score, address yourAddress)**: A function to evaluate a score, with range validation and ownership check.
- **revertIfNotOwner(address yourAddress)**: A helper function to revert if the caller is not the owner.


## Prerequisites

- Solidity ^0.8.0
- Ethereum Development Environment

## Usage

1. Deploy the `EvmMod1` smart contract to the Ethereum blockchain.
2. Ensure that you are the owner by setting the `owner` variable during deployment.
3. Call the `Evaluate` function to evaluate a score, passing the score and your address.
4. The evaluation will only succeed if the caller is the owner and the score is within the valid range (0 to 100).

## Examples

```solidity
// Deploy the contract and set yourself as the owner
contract EvmMod1Instance = new EvmMod1{value: 1 ether}();
address owner = msg.sender;

// Evaluate a score (assuming you are the owner)
EvmMod1Instance.Evaluate(80, owner);
