pragma solidity >=0.6.2 < 0.7.0;

/*  this contract is use to demonstrate knowledge of solidity mapping
which is like an hash map, it makes use of key value pairs */
contract mappingTest {

    /*  declare the mapping variable e.g 
    mapping(keyType => _valueType) public mappingName */
    mapping(address => uint) public userLevel;
    // address[] student_result = []; 
    
    // set userAddress
    function setUserCurrentLevel (address userAddress, uint level) public {
        userLevel[userAddress] = level;
    }

    function getUserCurrentLevel (address userAddress) public view returns (uint) {
        return  (userLevel[userAddress]);
    }



    
}