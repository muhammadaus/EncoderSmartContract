// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UniversalEncoder {

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

    // Function to encode a struct
    struct Person {
        string name;
        uint256 age;
    }

    function encodeStruct(Person memory person) public pure returns (bytes memory) {
        return abi.encode(person);
    }

    // Function to encode a dynamic array of structs
    function encodeDynamicArrayOfStructs(Person[] memory people) public pure returns (bytes memory) {
        return abi.encode(people);
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
}