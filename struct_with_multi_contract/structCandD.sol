pragma solidity ^0.8.0;

/*
    Calling smart contracts which are located inside the same file 
*/

//  TestOne Contract
contract TestOne {
    /*
    external keyword for function will make the function to only be called
    from contract outside where its implemented only
    */ 
    function greetClass() external pure returns(string memory){
        return "Hello Maja";
    }
}


contract TestTwo {

    address addressTestTwo;

    // this function is essential
    function setAddressTwo(address _addressTestTwo) external {
        /* TestOne is deployed check bscscan for the contract addres then call
        this function to set the address by paste it here to make the child contract
        work
        */
        addressTestTwo = _addressTestTwo;
    }

    function getHelloWorld() external view returns(string memory) {
        /* the contract which will be the child which will be called in another
        contract is what you will set variable to copy
        and set the smart address in the parent contract e.g
        once TestOne is deployed check bscscan for the contract addres
        */
        TestOne testOne = TestOne(addressTestTwo);
        return testOne.greetClass();
    }
}


