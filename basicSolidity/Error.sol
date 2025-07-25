// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// require , revert, assert
// - gas refund, state updates are reverted
// custom error -save gas
contract ErrorCon {

    function testRequire(uint _i) public pure {
        require(_i <= 10, "ErrorCon: _i");
    }

    function testRevert(uint _i) public pure {
        if(_i > 10) {
            revert("ErrorCon: _i");
        }
    }
    uint public num =123;
    function testAssert() public view {
        assert(num == 123);
    }

    function foo(uint _i) public  {
        num++;
        require(_i < 10);
    } 
}