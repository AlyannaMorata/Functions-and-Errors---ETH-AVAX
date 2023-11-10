//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract ErrorHandling{

    address public owner;
    uint public count;

    constructor() {
        owner = msg.sender;
    }
    function call_require() public  { 
        //remaining gas will return to the user
        //if the error occurs
        //however, the consumed gas will not return
        count ++;
        require( msg.sender == owner, "only owner have access");
    }

    function call_assert() public {
        //no gas will be refunded to the user 
        count ++;
        assert( msg.sender != owner);
    }

    function call_revert(uint _x) public {
        //remaining gas will return to the user
        //if the error occurs
        //however, the consumed gas will not return
        count++;
        if (_x <= 10) {
            revert("Input must be greater than 10");
        }
    }
    
}
