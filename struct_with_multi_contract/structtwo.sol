pragma solidity ^0.8.0;

import "./structtwopart.sol";
// Note: Smart Contracts
contract StructTemi {

    struct Student {
        uint score;
        string class;
        address addr;
    }

    struct InputStudent {
        uint score;
        string class;
        address addr;
    }


    struct Certifcate {
        uint year;
        string degree;
    }

    address addressTwoPart;
    // make use of mapping to store the data
    mapping(address => Student) public students;

    Student[] studentList;
    string public y;
    string public greetings;

    function foo(string memory s, Student memory b) public {
        y = s;
    }

    // method 1 to input data using each elements of the structs
    function addStudent(uint _score, string memory _class,address _addr) public {
        Student memory student =Student({score: _score, class: _class, addr: _addr});
        students[_addr] = student;
    }

    // method 2 to input data using struct variable to pass data to structs
    /* an object parameter which from it a new struct value was stored*/
    function addStudentStructArrData(InputStudent[] memory _inputStudent) public {
        /* in the ide to enter value makes use of [{"score": 5}] or
        [[5]]
        [[10, "ss1", "0xDf4D56b47C5d1223f5FAbB49089e8AF7De418C24"]]. or
        */
        // address adPass = _inputStudent[0].addr;
        Student memory stud = Student({score: _inputStudent[0].score, class: _inputStudent[0].class, addr: _inputStudent[0].addr});
        address adPass = _inputStudent[0].addr;
        students[adPass] = stud;
    }

    function addStudentStructArr(InputStudent[] memory _inputStudent) public view returns(uint) {
        // in the ide to enter value makes use of [{"score": 5}]
        uint score =_inputStudent[0].score;
        return score;
    }

    /*  to call it on web through the use of metamask & etherjs npm
        const val = [100, "ss2", "0x424e4a2AD3A92cE9B4B617155dB224EF34a53410"];
        const update = await structTokenContract.addStudentStructSingle(val);
     */
    function addStudentStructSingle(InputStudent memory _inputStudent) public view returns(uint) {
        // in the ide to enter value makes use of [{"score": 5}]
        uint score =_inputStudent.score;
        return score;
    }

    /*  to call it on web through the use of metamask & etherjs npm
        const val = [300, "ss2", "0x424e4a2AD3A92cE9B4B617155dB224EF34a53410"];
        const text = "Hello";
                            OR
        const val = { "score": 400, class: "ss2", "addr": "0x424e4a2AD3A92cE9B4B617155dB224EF34a53410" };
        const text = "Hello";
         const update = await structTokenContract.addStudentStructSingText(text, val);
     */
    function addStudentStructSingText(string memory _greetings,InputStudent memory _inputStudent) public returns(uint) {
        // in the ide to enter value makes use of [{"score": 5}]
        greetings = _greetings;
        uint score =_inputStudent.score;
        return score;
    }

    // passing 2 structs as an argument to a function
    function addStudentStructInfo(Certifcate[] memory _cert, InputStudent[] memory _inputStudent) public view returns(uint, uint) {
        // in the ide to enter value makes use of [{"score": 5}]
        uint year = _cert[0].year;
        uint score =_inputStudent[0].score;
        return (year,score);
    }

    /*  to call it on web through the use of metamask & etherjs npm
        const val = [[700, "ss2", "0x424e4a2AD3A92cE9B4B617155dB224EF34a53410"]];
        const text = "Hello";
                        OR
        using object
        const val = [{ "score": 750, "class": "ss2", "addr": "0x424e4a2AD3A92cE9B4B617155dB224EF34a53410" }];
        const text = "Hello";            
         const update = await structTokenContract.addStudentStructSingText(text, val);
     */
    function addStudentStructArrText(string memory _greetings,InputStudent[] memory _inputStudent) public  returns(uint) {
        // in the ide to enter value makes use of [{"score": 5}]
        greetings = _greetings;
        uint score =_inputStudent[0].score;
        return score;
    }


    function getStudent(address _addr) public view returns (Student memory) {
        return students[_addr];
    }

    function addStudentArr(uint _score, string memory _class, address _addr) public returns(Student memory) {
        // in the ide to enter value makes use of [{"score": 5}]
        Student memory _studentList = Student(_score, _class, _addr);
        studentList.push(_studentList);
        return _studentList;
    }

    function getStudentListArr(string memory _class) public view returns(string memory) {
        uint i=0;
        string memory result ="no match";
        for(i = 0; i < studentList.length; i++){
            if((keccak256(abi.encodePacked((studentList[i].class))) == keccak256(abi.encodePacked((_class))))) {
                result = studentList[i].class;
                return result;
            }
        }
        return result;
    }

    // 
    function deleteStudents(address _addr) public  returns(Student memory) {
        delete students[_addr];
        return students[_addr];
    }

    function setaddressTwoPart(address _addressTwoPart) external {
        addressTwoPart =_addressTwoPart;
    }

    // method 1  function call from another contract
   /*  function getAge() external returns(string memory) {
        //method 1 InterfaceTwoPart interfaceTwoPart =  InterfaceTwoPart(addressTwoPart);
        
        // method 2 
        StructTwoPart structTwoPart= new StructTwoPart();
        return structTwoPart.addition();
    }  */

     function getAge() external view returns(string memory) {
        // method 1
        InterfaceTwoPart interfaceTwoPart =  InterfaceTwoPart(addressTwoPart);
        
        // method 2 
        // StructTwoPart structTwoPart= new StructTwoPart();
        return interfaceTwoPart.addition();
    } 

    // method 2  function call from another contract
    function getAgeCntrError() external 
     {
        StructTwoPart structTwoPart = StructTwoPart(addressTwoPart);
        address(structTwoPart).call(abi.encodePacked("addition()"));
    } 

}
