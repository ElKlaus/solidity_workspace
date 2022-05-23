// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Demo {
    // Public
    // external
    // internal
    // private

    //view
    ///pure
    string message = "hello"; //state
    uint public balance;

    function pay() external payable {
        balance += msg.value;
    }

    fallback() external payable {
        
    }

    receive() external payable {
        //balances += msg.value;
    }

    function setMessage(string memory newMessage) external returns(string memory){
        message = newMessage;

        return message;
    }
    //call
    function getBalance() public view returns(uint balance) {
        balance = address(this).balance;

        //return balance;
    }

    function getMessage() external view returns(string memory) {
        return message;
    }

    function rate(uint amount) public pure returns(uint) {
        return amount * 3;
    }
}