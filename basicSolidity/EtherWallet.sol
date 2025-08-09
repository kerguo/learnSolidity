// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FallbackDemo {
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    event Received(address sender, uint amount);
    event FallbackCalled(address sender, uint amount, bytes data);

    // 专门接收 ETH（无 calldata）
    receive() external payable {
        emit Received(msg.sender, msg.value);
    }

    // 处理未匹配函数或带 calldata 的情况
    fallback() external payable {
        emit FallbackCalled(msg.sender, msg.value, msg.data);
    }

    function withdraw(uint _amount) external  {
        require(msg.sender == owner ," caller is now owner");
        payable(msg.sender).transfer(_amount);
    }
}

//0xE73E34dc58E839eF58B64B3FC81F37BC864a9065


//0x5B38Da6a701c568545dCfcB03FcB875f56beddC4