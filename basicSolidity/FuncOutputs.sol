// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FuncOutputs {
    function returnMany() public pure returns (uint256, bool) {
        return (1, true);
    }

    function named() public pure returns (uint a, bool b) {
        return (1, true);
    }

    function assigned() public pure returns (uint256 a, bool b) { 
        a = 1;
        b = true;
    }
}
