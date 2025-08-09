// SPDX-License-Identifier: MIT
pragma solidity ^0.8;


contract MyContract {
    event Received(address sender, uint amount);

    receive() external payable {
        emit Received(msg.sender, msg.value);
    }
}

// 0xDa80487aBf22e2728e8ba50B908cb312900CC938
// 0xDa80487aBf22e2728e8ba50B908cb312900CC938


// 0x843a9800381dc35DbE37B58AE082d0363c26B66c
// 0x843a9800381dc35dbe37b58ae082d0363c26b66c


// 0xB775b7F7E0Fc668d4eB9Cb14c952F97b917F7B53


// 0x843a9800381dc35dbe37b58ae082d0363c26b66c


// 0x843a9800381dc35DbE37B58AE082d0363c26B66c