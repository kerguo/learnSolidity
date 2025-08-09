//SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

contract SelectorTest {

    // 返回函数选择器 `bar()` 0xfebb0f7e
    function bar() public pure returns (bytes4) {
        return msg.sig;
    }

    // 返回函数选择器 `foo()` 0xc2985578
    function foo() public pure returns (bytes4) {
        return bar();
    }

    function testSelectors() external pure returns (bool) {
        
        assert(this.foo.selector == 0xc2985578);
        assert(this.bar.selector == 0xfebb0f7e);
        
        return true;
    }

    // 使用 `foo()` 选择器调用 `foo()`
    function invoke() external  {

         bytes4 fooSelector = 0xc2985578;
         address _contract = address(this);
        (bool ok, ) = _contract.call(abi.encodePacked(fooSelector)); 
        require(ok, "call failed");

     }
}

