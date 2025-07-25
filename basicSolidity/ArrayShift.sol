// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TestRemove {
    uint256[] public arr;

    function remove(uint256 _index) public {
        require(_index < arr.length, "Index out of bounds");
        for (uint256 i = _index; i < arr.length - 1; i++) {
            arr[i] = arr[i + 1];
        }
        arr.pop();
    }

    function test() external {
        arr = [1, 2, 3, 4, 5, 6];
        remove(2);

        assert(arr[0] == 1);
        assert(arr[1] == 2);
        assert(arr[2] == 4);
        assert(arr[3] == 5);
        assert(arr[4] == 6);

        assert(arr.length == 5);

        arr = [1];
        remove(0);
        assert(arr.length == 0);
    }
}
