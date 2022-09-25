// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Contador {

    uint256 count;

    constructor(uint256 _count )  {
        count = _count;
    }

    function setCount(uint256 _count) public {
        count = _count;
    }

    function incrementCount() public {
        count++;
    }


    function getCount() public view returns(uint256) {
        return count;
    }

    function getNumber() public  pure returns(uint256){
        return 34;
    }
}