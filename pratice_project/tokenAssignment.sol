// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0;

// T1. mint enough BNB to your account for call contract creation and interaction
// T2. Deploy it to BSC testnet
// T3. Finish below coding tasks 
contract Coin {
    // The keyword "public" makes variables
    // accessible from other contracts
    address public minter;
    string public owner_email;
    string public greeting;
    
    // instatiate a map object with balance 
    mapping (address => uint) public balances;
    // Constructor code is only run when the contract
    // is created
    constructor(string memory email) {
        minter = msg.sender;
        // Question 1: assign owner_email to contract state
        // put your code here
        owner_email = email;
        // ###       END           ###
    }

    // Sends an amount of newly created coins to an address
    // Can only be called by the contract creator
    function mint(address receiver, uint amount) public {
        require(msg.sender == minter);
        require(amount < 1e60);
        balances[receiver] += amount;
    }
    // Sends an amount of existing coins
    // from any caller to an address
    function send(address receiver, uint amount) public {
        require(amount <= balances[msg.sender], "Insufficient balance.");
        balances[msg.sender] -= amount;
        balances[receiver] += amount;
    }

    // Question 2: return a string as "Hello from " + owner_email e.g "Hello from tim@whitematrix.io"
    function hellofromOwner(string memory email) public view returns (string memory){
        // put your code here
        return string(abi.encodePacked("Hello from ", owner_email));
    }
    // ###       END           ###

    // Extra Question: this is an extra question and does not count any points !
    // return first 10 integers with a given input {0<number<100} that are multiple of the {number}.
    // example 
    // input: (5)
    // output [0,5,10,15,20,25,30,35,40,45]
    // input: (8)
    // output: [0,8,16,24,32,40,48,56,64,72]
    function calculate(uint number) public view returns (uint[] memory){
        require(number > 0);
        require(number < 100);
        uint[] memory ret = new uint[](10);
        // put your code here
        uint i=0;
        while(i<10) {
            uint data =i* number;
            ret[i] =data;
            if(i >=10){
                break;
            }
            i++;
        }
        // hint: use loop to achieve this task. loop tutorial: https://www.tutorialspoint.com/solidity/solidity_loops.htm
        return ret;
    }
    // ###       END           ###
}