// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.10;

import "hardhat/console.sol";

contract Domains {
// A "mapping" data type to store their user domain names
  mapping(string => address) public domains;
  
  constructor() {
    console.log("This is my domain contract. Yihaaw");
  }
// A register function that adds their names to our mapping
  function register(string calldata name) public {
    domains[name] = msg.sender;
    console.log("% has registered a domain!", msg.sender);
  }
// This will give us the domain owners' address
  function getAddress(string calldata name) public view returns (address) {
    return domains[name];
  }
}
