# Election

This is a smart contract written in Solidity that implements a simple voting system using homomorphic encryption.

## Description

This contract allows users to cast votes for candidates using encrypted values that can be decrypted later to reveal the vote count. The contract uses a public key and a private key for encryption and decryption respectively. The public key should be a large prime number and the private key should be kept secret.

## Installation

To use this contract, you need to have [Solidity](https://docs.soliditylang.org/en/v0.8.10/) installed on your machine. You can also use an online IDE such as [Remix](https://remix.ethereum.org/) to compile and deploy the contract.

## Usage

To create an instance of the contract, you need to pass the name of the election as a string argument to the constructor:

```solidity
Election election = new Election("Presidential Election");
To cast a vote for a candidate, you need to pass the candidate’s ID (a positive integer) as an argument to the castVote function:

election.castVote(1); // Vote for candidate 1
To get the decrypted vote count for a candidate, you need to pass the candidate’s ID as an argument to the getVoteCount function:

election.getVoteCount(1); // Get vote count for candidate 1

## License
This project is licensed under GPL-3.0.