// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract ContractA {
    //0x1456344614B45baf39f294c9e7306099327887A1
    bool public flag;

    receive() external payable {}

    fallback() external payable {
        flag = true;
    }
}

contract ContractB {
    //0xA831F4e5dC3dbF0e9ABA20d34C3468679205B10A
    uint256 public len;

    function callFallback(address _contract) external payable {
        // 调用ContractA中不存在的函数
        bytes memory encodedData = abi.encodeWithSignature(
            "nonExistentFunction()"
        );

        string memory str = "100000000000000000";
        len = bytes(str).length;
        (bool suc, ) = _contract.call{value: 100000000000000000}(encodedData);
        require(suc, "call fail");
    }
}

//0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2

//0xA831F4e5dC3dbF0e9ABA20d34C3468679205B10A

// 0xA831F4e5dC3dbF0e9ABA20d34C3468679205B10A
//0x1456344614B45baf39f294c9e7306099327887A1

// 0x1456344614B45baf39f294c9e7306099327887A1
