 // SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Counter {
    uint public value;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    function increment() public onlyOwner {
        value += 1;
    }

    function decrement() public onlyOwner {
        value -= 1;
    }

    function get() public view returns (uint) {
        return value;
    }
}
