 // SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract Counter {
    uint public value;
    address public owner;

    event Increment(address indexed caller, uint newValue);
    event Decrement(address indexed caller, uint newValue);
    event Reset(address indexed caller, uint newValue);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    function reset() public onlyOwner {
        value = 0;
        emit Reset(msg.sender, value);
    }

    function increment() public onlyOwner {
        value += 1;
        emit Increment(msg.sender, value);
    }

    function decrement() public onlyOwner {
        value -= 1;
        emit Decrement(msg.sender, value);
    }

    function get() public view returns (uint) {
        return value;
    }
}
