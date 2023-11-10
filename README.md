# Functions and Errors - ETH + AVAX

A Solidity smart contract demonstrating different error-handling mechanisms: `require`, `assert`, and `revert`. Compatible with both Ethereum (ETH) and Avalanche (AVAX) blockchains.

## Table of Contents

- [Overview](#overview)
- [Functions](#functions)
  - [call_require()](#call_require)
  - [call_assert()](#call_assert)
  - [call_revert(uint _x)](#call_revertuint-_x)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Overview

This Solidity smart contract provides examples of error handling using `require`, `assert`, and `revert` statements. The contract has three functions demonstrating each of these error-handling mechanisms. It is designed to be compatible with both Ethereum (ETH) and Avalanche (AVAX) blockchains.

## Functions

### call_require()

Increments the `count` variable and uses the `require` statement to check if the sender of the transaction is the owner. If not, it throws an error message, and any remaining gas is returned to the user.

### call_assert()

Increments the `count` variable and uses the `assert` statement to check if the sender is not the owner. Unlike `require`, `assert` does not refund any gas to the user.

### call_revert(uint _x)

Increments the `count` variable and uses an `if` statement to check if the input parameter `_x` is less than or equal to 10. If true, it reverts the transaction with a specified error message. Any remaining gas is returned to the user in case of a revert.

## Usage

1. Deploy the smart contract to a compatible Ethereum or Avalanche blockchain.
2. Interact with the contract using the provided functions (`call_require()`, `call_assert()`, `call_revert(uint _x)`).
3. View the gas consumption and refund behavior for each function.

## Contributing

Feel free to contribute by opening issues or submitting pull requests. Follow the steps outlined in the [Contributing Guidelines](CONTRIBUTING.md).

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
