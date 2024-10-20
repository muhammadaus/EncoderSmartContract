// script/DeployEncoder.s.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/Encoder.sol"; // Ensure this path is correct

contract DeployEncoder is Script {
    function run() external {
        vm.startBroadcast(); // Start broadcasting transactions

        // Deploy the Encoder contract
        Encoder encoder = new Encoder(); // No parameters needed

        vm.stopBroadcast(); // Stop broadcasting transactions
    }
}
