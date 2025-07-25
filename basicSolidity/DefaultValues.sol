// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DefaultValues {
    bool public b;
    uint public c;
    int public d;
    address public e; //ox00000 00000 00000 00000
    bytes32 public f; //0x00000 00000 00000 00000 00000 00000 00000 00000 00000 00000 00000 00000 0000

    string s = "0x0000000000000000000000000000000000000000000000000000000000000000";
    function getStringLength(string memory str) public pure returns (uint256) {
        return bytes(str).length;
    }
    uint256 len = getStringLength(s);

}