pragma solidity ^0.6.0;

// how to store student information
contract Assignment {

    // create a student structure 
    struct Student {
        string name;
        uint number;
        bool isMale;
    }
    // you can set a specific address e.g 0xhdj
    address owner;

    // set modifier
    modifier onlyOwner () {
        require(msg.sender == owner);
        _; 
    }

    // create a student variable
    Student student1;

   /* set student variable information, if you make use of string or array for input or output
   you need to add memory keyword .this function can only be called by onlyOwner modifier*/
    function setInformation(uint _number, string memory _name, bool _isMale) public onlyOwner{
        student1.number = _number;
        student1.name = _name;
        student1.isMale = _isMale;

        // you can call getInformation
        // uint getNum;
        // string getname;
        // bool maleState;
         (uint _getNum, string memory _getname, bool _maleState) = getInformationPair();
        //  Student memory df = getInformationPair();
        
    }

    // get student information
    // function getInformation () public view returns (Student) {
    //     return student1;
    // }


    // get student information getting just each key pairs
    function getInformationPair () public view returns (uint, string memory, bool) {
        return (student1.number, student1.name, student1.isMale);
    }

}