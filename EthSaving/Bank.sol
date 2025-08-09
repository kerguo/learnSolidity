// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract Bank {
    receive() external payable {}

    constructor() payable {
        // 合约可接收部署时发送的 ETH
    }

    function withdrwaWithTran() external {
        payable(msg.sender).transfer(1 ether);
    }

    function withdrawWithSend() external {
        bool success = payable(msg.sender).send(1 ether);
        require(success, "Send failed");
    }

    function withdrawWithCall() external {
        (bool success, ) = payable(msg.sender).call{value: 1 ether}("");
        require(success, "Call failed");
    }
}


// 0x09197b6faf9f5ADE46D476A0061F0119FB681367


// 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4