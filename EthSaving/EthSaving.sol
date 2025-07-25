// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EthSavings {
    // 记录每个用户的 ETH 余额
    mapping(address => uint256) private balances;

    // 存款事件
    event Deposited(address indexed user, uint256 amount);

    // 提现事件
    event Withdrawn(address indexed user, uint256 amount);

    // 存入 ETH
    function deposit() external payable {
        require(msg.value > 0, "Deposit amount must be greater than 0");
        balances[msg.sender] += msg.value;
        emit Deposited(msg.sender, msg.value);
    }

    // 查询用户余额
    function balanceOf(address user) external view returns (uint256) {
        return balances[user];
    }

    // 提现 ETH
    function withdraw(uint256 amount) external {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
        emit Withdrawn(msg.sender, amount);
    }
}