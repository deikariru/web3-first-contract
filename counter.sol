// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter {
    uint public value;

    function increment() public {
        value += 1;
    }

    function decrement() public {
        value -= 1;
    }

    function get() public view returns (uint) {
        return value;
    }
}
