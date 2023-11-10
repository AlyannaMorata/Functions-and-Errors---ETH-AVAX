// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ErrorHandling {
    address public owner;
    uint public count;

    constructor() {
        owner = msg.sender;
    }

    function call_require() public { 
        count++;
        require(msg.sender == owner, "Only the owner has access");
    }

    function call_assert() public {
        count++;
        assert(msg.sender != owner);
    }

    function call_revert(uint _x) public {
        count++;
        if (_x <= 10) {
            revert("Input must be greater than 10");
        }
    }
}
