# FundraiserToken ERC20 Project

This project introduces an ERC20 token named FundraiserToken (FRT) designed to facilitate fundraising activities. It is built on the Ethereum blockchain using Solidity and leverages the OpenZeppelin contracts for standard ERC20 functionalities.

## Features

- **ERC20 Standard Compliance**: The token adheres to the ERC20 standard, ensuring compatibility with a wide range of wallets and exchanges.
- **Fundraising Capabilities**: Special functions to support fundraising activities, including token minting, donations, and token burning.
- **Donation Tracking**: The contract tracks donations made by each address, allowing users to view their donation history.
- **Organizer-Only Operations**: Certain operations, such as minting new tokens and viewing total donations, are restricted to the organizer of the fundraiser.

## Contract Functions

- `mintTokens(uint256 amount)`: Allows the organizer to mint new tokens.
- `donateTokens(address to, uint256 amount)`: Enables users to donate tokens to another address.
- `burnTokens(uint256 amount)`: Allows users to burn their tokens.
- `checkDonationHistory()`: Returns the total amount of tokens donated by the caller.
- `viewTotalDonations()`: Allows the organizer to view the total amount of donations received.

## Getting Started

To interact with this contract, you need a Solidity development environment set up, including Node.js, Truffle, and Ganache for local blockchain simulation.

1. **Install Dependencies**: Run `npm install` to install required dependencies, including OpenZeppelin contracts.
2. **Compile Contract**: Compile the contract using Truffle with `truffle compile`.
3. **Deploy Contract**: Deploy the contract to your desired network using `truffle migrate`.

## Testing

To test the contract functions, you can write test scripts using Truffle's testing framework. Place your test files in the `test` directory and run them with `truffle test`.

## License

This project is licensed under the MIT License.

## Disclaimer

This project is for educational purposes only. Ensure thorough testing and auditing before deploying any smart contract to a live blockchain network.
