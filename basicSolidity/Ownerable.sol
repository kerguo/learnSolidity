// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Ownerable {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    function setOwner(address _newOwner) external onlyOwner {
        require(_newOwner != address(0), "New owner is invalid");
        owner = _newOwner;
    
    }

    function onlyOwnerCanCall() external onlyOwner {

        // Only owner can call this function
    }

    function anyOneCanCall() external view{
        // Any one can call this function
    }
}