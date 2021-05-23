pragma solidity ^0.8.0;


abstract contract InterfaceTwoPart {
    function addition ()external pure virtual returns(string memory); 
}

contract StructTwoPart is InterfaceTwoPart{
    function addition ()external pure override returns(string memory) {
        uint age =10+8;
        return string(abi.encodePacked("My age is ", age));
        
    }
}