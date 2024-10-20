// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Encoder {

    constructor() {
           // Initialization logic (if any)
       }

    // Function to encode a single uint256
    function encodeUint256(uint256 value) public pure returns (bytes memory) {
        return abi.encode(value);
    }

    // Function to encode a single string
    function encodeString(string memory value) public pure returns (bytes memory) {
        return abi.encode(value);
    }

    // Function to encode multiple parameters (uint256, string)
    function encodeMultiple(uint256 value, string memory text) public pure returns (bytes memory) {
        return abi.encode(value, text);
    }

    // Function to encode an array of uint256
    function encodeUint256Array(uint256[] memory values) public pure returns (bytes memory) {
        return abi.encode(values);
    }

    // Function to encode an array of strings
    function encodeStringArray(string[] memory values) public pure returns (bytes memory) {
        return abi.encode(values);
    }

    // Function to encode a boolean
    function encodeBool(bool value) public pure returns (bytes memory) {
        return abi.encode(value);
    }

    // Function to encode an address
    function encodeAddress(address value) public pure returns (bytes memory) {
        return abi.encode(value);
    }

    // Function to encode multiple types
    function encodeMultipleTypes(uint256 num, string memory text, bool flag, address addr) public pure returns (bytes memory) {
        return abi.encode(num, text, flag, addr);
    }

    // Function to encode data and pass it to another contract
    function encodeAndPassData(
        address targetContract,
        bytes memory encodedData
    ) internal {
        (bool success, ) = targetContract.call(encodedData);
        require(success, "Target contract call failed");
    }

    // Function to encode and pass uint256
    function encodeAndPassUint256(address targetContract, uint256 value) public {
        bytes memory encodedData = encodeUint256(value);
        encodeAndPassData(targetContract, encodedData);
    }

    // Function to encode and pass string
    function encodeAndPassString(address targetContract, string memory value) public {
        bytes memory encodedData = encodeString(value);
        encodeAndPassData(targetContract, encodedData);
    }

    // Function to encode and pass multiple parameters
    function encodeAndPassMultiple(address targetContract, uint256 value, string memory text) public {
        bytes memory encodedData = encodeMultiple(value, text);
        encodeAndPassData(targetContract, encodedData);
    }

    // Function to encode and pass array of uint256
    function encodeAndPassUint256Array(address targetContract, uint256[] memory values) public {
        bytes memory encodedData = encodeUint256Array(values);
        encodeAndPassData(targetContract, encodedData);
    }

    // Function to encode and pass array of strings
    function encodeAndPassStringArray(address targetContract, string[] memory values) public {
        bytes memory encodedData = encodeStringArray(values);
        encodeAndPassData(targetContract, encodedData);
    }

    // Function to encode and pass boolean
    function encodeAndPassBool(address targetContract, bool value) public {
        bytes memory encodedData = encodeBool(value);
        encodeAndPassData(targetContract, encodedData);
    }

    // Function to encode and pass address
    function encodeAndPassAddress(address targetContract, address value) public {
        bytes memory encodedData = encodeAddress(value);
        encodeAndPassData(targetContract, encodedData);
    }

    // Function to encode and pass multiple types
    function encodeAndPassMultipleTypes(address targetContract, uint256 num, string memory text, bool flag, address addr) public {
        bytes memory encodedData = encodeMultipleTypes(num, text, flag, addr);
        encodeAndPassData(targetContract, encodedData);
    }
}
