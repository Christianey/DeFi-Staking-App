pragma solidity >=0.7.0 <0.9.0;

contract Tether {
    string public name = "Mock Tether Token";
    string public symbol = "#USDT";
    uint256 public totalSupply = 10000000000000000000000;
    uint8 public decimals = 18;
    mapping(address => uint256) balanceOf;

    constructor() {
        balanceOf[msg.sender] += totalSupply;
    }

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approve(
        address indexed owner,
        address indexed spender,
        uint256 value
    );
}
