pragma solidity ^0.8.0;
/* Below is use to test knowledge on encapsulation */
/* You can have more than one contract in a file
    a contract( class in other languages)
 */

contract C {
    /* public will make it possible for data and iData to be reassign new values from a different class */
     /* private you can only assign value to data and iData to be reassign new values from a different class*/
   uint public data = 30;
   uint internal iData= 10;
   
/* this function can be called within contract C & can be called from a different
    contract */
   function x() public returns (uint) {
      data = 3; // internal access
      return data;
   }

    /* you can't make use of a view for a function which value
     that will modifie state value */
   function xDisp() public view returns (uint) {
      // data = 40; // internal access
      uint restore = data*7;
      return restore;
   }

}
contract Caller {
   C c = new C();
   function f() public view returns (uint) {
      return c.data(); //external access
   }
}
contract D is C {
    uint private storedData; // state variable

    constructor(uint data) public {
        storedData = data;
    }

   function y() public returns (uint) {
      iData = 3; // internal access where by iData parent is from 
      return iData;
   }

   function getResult() public view returns(uint){
      uint a = 1; // local variable
      uint b = 2;
      uint result = a + b;
      return iData; //access the state variable
   }
}