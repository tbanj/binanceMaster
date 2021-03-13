pragma solidity ^0.4.18;

/*  this contract is use to demonstrate knowledge of solidity mapping
which is like an hash map, it makes use of key value pairs */
contract mappingTestTwo {

    // Defining structure 
    struct student { 
  
        // Declaring different 
        // structure elements 
        string name; 
        string subject; 
        uint8 marks; 
    } 

    /*  declare the mapping variable e.g 
    mapping(keyType => _valueType) public mappingName */
    mapping(address => student) public result;
    address[] studentResult ; 
    
    // set userAddress
   //Function adding values to the mapping 
    function adding_values() public { 
        student useStudent = result[0xDEE7796E89C82C36BAdd1375076f39D69FafE252]; 
        // instead of using var create an object variable
        // var student = result[0xDEE7796E89C82C36BAdd1375076f39D69FafE252]; 
  
        useStudent.name = "John"; 
        useStudent.subject = "Chemistry"; 
        useStudent.marks = 88; 
        studentResult.push( 
          0xDEE7796E89C82C36BAdd1375076f39D69FafE252) -1; 
  
    } 
      
     // Function to retrieve  
     // values from the mapping 
     function get_studentResult( 
     ) view public returns (address[] memory) { 
        return studentResult; 
    } 
  
    // Function to count number  
    // of values in a mapping 
    function count_students( 
    ) view public returns (uint) { 
        return studentResult.length; 
    }

    
}