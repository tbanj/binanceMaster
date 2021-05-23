pragma solidity ^0.8.0;


/* Note: Smart Contracts
    import smart contract structB into structA using imports
*/

import "./structA.sol";
contract TestBTwo {

    address addressTestTwo;

    // this function is essential
    function setAddressTwo(address _addressTestTwo) external {
        /* TestOne is deployed check bscscan for the contract addres then call
        this function to set the address
        */
        addressTestTwo = _addressTestTwo;
    }

    function getHelloWorld() external view returns(string memory) {
        /* the contract which will be the child which will be called in another
        contract is what you will set variable to copy
        and set the smart address in the parent contract e.g
        once TestOne is deployed check bscscan for the contract addres
        */
        TestAOne testAOne = TestAOne(addressTestTwo);
        return testAOne.greetClass();
    }

    // below is use to show sample how to handle error in other contracts
    function willThrowInItherContract() external {
        /* Ways to call a child smart contract inside a parent contract
        i) B b= B(smartContractAddA):- require smart contract addr A
        ii) B b= new B() ;- does not require smart contract addr A
          */
        TestAOne testAOne = new TestAOne(); 
        /* b.testError();
        if you call the testError() directly like b.testError(), it will break
        the child contract & parent though the error will start from child
        below code will return false if error was encounter
        */  
        address(testAOne).call(abi.encodePacked("testError()"));
        
    }
   
}


    //  function getGret() public view returns(string memory) {
    //     //  return string(abi.encodePacked(welcome, "guest"));
    //     populateMsg();
    //     return welcome;
    //  }
