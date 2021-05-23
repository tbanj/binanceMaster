pragma solidity ^0.8.0;


/* @InterfaceTestAOne is smart contract interface
this function signature use when importing sol file without not the total
function implementation accessible outside.
you only need to abstract funtion which will be called from another 
for interface implementation keyward you can use are abstract contract or interface. but interface
keyword doesnt work perfectly with other functions properly
*/ 

// you can place all the functions parts of it into the abstract contract so has to
// to expose the function name to other contracts
abstract contract InterfaceTestAOne {
    function greetClass() external pure virtual returns(string memory);
    function testError() external  virtual;
}

contract TestAOne is InterfaceTestAOne{
    /*
    external keyword for function will make the function to only be called
    from contract outside where its implemented only
    */ 
    function greetClass() external pure override returns(string memory){
        /* Types of errors
        i) expected error :-  revert() or require()
        ii) unexpected error:- assert()
         revert() or require() is use to throw or check if error might occur
         revert("this is why it reverts");
         require(a != 10,"this is why it reverts");
         unplanned error assert(a != 10);
         */
        return "Maja is from Nigeria";
    }

    /* use to simulate if error occur in a child contract how to handle it 
    to checkmate it from affecting the parent contract    
    */ 
     function testError() external override {
        revert("because other reasons");
    }
}

