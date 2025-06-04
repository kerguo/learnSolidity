// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract ValueType {
    bool public b = true;
    uint8 public u = 0;

    int public i = -123;

    int public minInt = type(int).min;

    function subtractMinusOne(uint8 a) public  returns (uint8){
        return a -1 ;
    }

    function add(uint x, uint y) external pure returns (uint z){
        return x + y;
    }

    function sub(uint x, uint y) external pure returns (uint){
        return x - y;
    }
  

    
}