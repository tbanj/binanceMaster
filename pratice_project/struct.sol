pragma solidity >=0.6.2 < 0.7.0;

// structure and enums are almost the same but not the same thing
contract structure_contract {
    
   /* Structure known as struct is use to create complicated
    data type which have multiple properties like uint, int256 */
    struct testStruct {
        int256 age;
        string name;
        uint    level;
    }

    // declaring struct object
    testStruct student1;

    /*  Assigning values to the fields for the structure object student2  */
    testStruct student2 = testStruct(20," Ade ", 10);
    
    /* set testStructure object student1, this doesnt make use
    so the values can only be testStruct(18, "Wahab", 15)*/
    function setStudent () public {
        student1 = testStruct(18, " Wahab ", 15);
    }

    // get testStructure object student1
    function getStudent () public view returns (int256, string memory, uint) {
         return (student1.age, student1.name, student1.level);
    }

    // get testStructure object student2
    function getStudentTwo () public view returns (int256, string memory, uint) {
         return (student2.age, student2.name, student2.level);
    }
}