// script/DeployEncoder.s.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/Encoder.sol"; // Ensure this path is correct

contract DeployEncoder is Script {
    address public encoderAddress; // This will hold the address of the deployed Encoder contract

    constructor(address _encoderAddress) {
        encoderAddress = _encoderAddress; // Initialize with the deployed contract address
    }

    function run() external {
        vm.startBroadcast(); // Start broadcasting transactions

        // Deploy the Encoder contract and store its address
        Encoder encoder = new Encoder(); // Create a reference to the deployed contract
        encoderAddress = address(encoder); // Store the address of the deployed contract

        vm.stopBroadcast(); // Stop broadcasting transactions
    }
}
