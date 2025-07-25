// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Data types - values and references

contract ValueTypes {
    bool public b = true;
    uint public u = 123; // uint = uint256 0 to 2**256 -1

    int public i = -123; // int = int256 -2**256 to 2**256 -1

    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    
}
