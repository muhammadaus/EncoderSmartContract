// script/Deploy.s.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/Encoder.sol"; // Ensure this path is correct

contract Deploy is Script {
    function run() external {
        vm.startBroadcast(); // Start broadcasting transactions

        // Deploy the Encoder contract
        Encoder encoder = new Encoder();

        vm.stopBroadcast(); // Stop broadcasting transactions
    }
}