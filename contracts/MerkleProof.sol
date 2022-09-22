// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "@openzeppelin/contracts-ethereum-package/contracts/cryptography/MerkleProof.sol";

contract MerkleProofContract {
  bytes32 public merkleRoot = 0x3aee8a44138c85617a7ca944108ff3016ea9f36a794394f729be8e27024fc442;

  mapping(address => bool) public whitelistClaimed;

  function whitelistMint(bytes32[] calldata _merkleProof) public {
    require(!whitelistClaimed[msg.sender], "Address has already claimed");
    bytes32 leaf = keccak256(abi.encodePacked(msg.sender));
    require(MerkleProof.verify(_merkleProof, merkleRoot, leaf), "Invalid proof");
    whitelistClaimed[msg.sender] = true;
  }
}
