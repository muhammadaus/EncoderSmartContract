// contracts/DynamicDataStorage.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DynamicDataStorage {
    // Mapping to store data associated with a unique key
    mapping(bytes32 => bytes) private dataStore;

    // Function to set data for a specific key
    function setData(bytes32 key, bytes memory value) public {
        dataStore[key] = value;
    }

    // Function to get data for a specific key
    function getData(bytes32 key) public view returns (bytes memory) {
        return dataStore[key];
    }

    // Function to encode and store a struct
    function encodeAndStoreStruct(bytes32 key, string[] memory fieldNames, bytes[] memory values) public {
        require(fieldNames.length == values.length, "Field names and values length mismatch");
        
        // Create a dynamic representation of the struct
        bytes memory encodedStruct;
        for (uint256 i = 0; i < fieldNames.length; i++) {
            // Concatenate field names and values (this is a simple example, you may want to use a more structured approach)
            encodedStruct = abi.encodePacked(encodedStruct, fieldNames[i], values[i]);
        }
        
        // Store the encoded struct
        setData(key, encodedStruct);
    }
}