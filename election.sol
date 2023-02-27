// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

contract Election {
    // Public variables
    string public name;
    mapping (uint => uint) public voteCount;

    // Private variables
    uint private publicKey;
    uint private privateKey;

    // Constructor
    constructor(string memory _name) {
        name = _name;
        publicKey = 5; // This should be a large prime number
        privateKey = 2; // This should be kept secret
    }

    // Homomorphic encryption function
    function encryptVote(uint vote) private view returns (uint) {
        return vote * publicKey + privateKey;
    }

    // Vote function
    function castVote(uint candidate) public {
        uint encryptedVote = encryptVote(candidate);
        voteCount[encryptedVote] += 1;
    }

    // Get decrypted vote count
    function getVoteCount(uint candidate) public view returns (uint) {
        uint encryptedCount = voteCount[encryptVote(candidate)];
        return (encryptedCount - privateKey) / publicKey;
    }
}
