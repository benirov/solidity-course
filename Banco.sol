// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Banco {

    address owner;

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
    

    function newOwner(address _newOwner) public onlyOwner {
        owner = _newOwner;
    }

    function getOwner() view public returns (address){
        return owner;
    }

    function getBalance() view public returns(uint256){
        return address(this).balance;
    }

    constructor() payable {
        owner = msg.sender;
    }

    function incremetBalance(uint256 amount) payable public {
        require(msg.value == amount);
    }

    function withdrawBalance() public onlyOwner {
        
        payable(msg.sender).transfer (address(this).balance);
    }

    function validate
}