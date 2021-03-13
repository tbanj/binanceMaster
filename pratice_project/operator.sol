pragma solidity ^0.8.0;
/* 
Solidity Operator
Bitwise Operators
Solidity supports the following bitwise operators −
Assume variable A holds 2 and variable B holds 3, then − */
contract C {
   uint private aa;
   uint private bb;
   uint16 private aaa;
   uint16 private bbb;
//    bool private abl, bbl;

   constructor(uint aval, uint bval, uint16 aaval, uint16 bbval) public{
        aa = aval;
        bb= bval;
        aaa = aaval;
        bbb = bbval;
        // abl = abool;
        // bbl = bbool;
   }
   
/* It performs a Boolean AND operation on each bit of its integer arguments. */

   function setA(uint aval) public{
       aa= aval;
   } 
   function setB(uint bval) public{
       bb= bval;
   } 

    function setAA(uint16 aaval) public{
       aaa= aaval;
   } 
   function setBB(uint16 bbval) public{
       bbb = bbval;
   } 

//    function setABL (bool abool) public {
//        abl = abool;
//    }

//    function setBBL (bool bbool) public {
//        bbl = bbool;
//    }

   // Relational Operators
   function RelaOpBasic() public view returns (string memory) {
    //    uint  aa = 40;
    //    uint  bb = 35;
       if(aa != bb){ 
           return string(abi.encodePacked("NotEqual ", aa," ", bb));
           }
        else if(aa == bb){ 
           return string(abi.encodePacked("EqualTo", aa," ", bb));
           }
        else if(aa <= bb){ 
           return string(abi.encodePacked("aa < or EqualTo bb", aa," ", bb));
           }
        else if(aa >= bb){ 
           return string(abi.encodePacked("> or EqualTo bb", aa, " ",bb));
           }
        // If both the operands are non-zero, then the condition becomes true.
        // else if(aa && bb){ 
        //    return string(abi.encodePacked("both figure are non zero", aa, " ", bb));
        //    }
        //    // Reverses the logical state of its operand if its positive will turn to negative
        // else if(!(aa && bb)){ 
        //    return string(abi.encodePacked("opposite of the operand", aa, " ",bb));
        //    }
           else {
               return string(abi.encodePacked("complicated logic state require", aa," ", bb));
           }
   }
        // Arithmetic Operators
        function arithOP () public returns(uint, uint, uint, uint, uint, uint, uint) {
            // sum
            uint sumNum = aa+ bb;

            // difference
            uint difNum = bb- aa;

            // division 
            uint divNum = bb/ aa;

            // decrement
            uint dcreNum = --bb;

            // increment
            uint increNum = ++bb;

            // decrement front
            uint dcreFNum = --bb;

            // increment front
            uint increFNum = ++bb;

            return (sumNum, difNum, divNum, dcreNum, increNum, increFNum, dcreFNum);

        }

        // Logical operator 
     function LogicOp( 
       bool abl, bool bbl) public view returns( 
       bool, bool, bool){ 
         
       // Logical AND operator   
       bool and = abl&&bbl; 
         
       // Logical OR operator   
       bool or = abl||bbl; 
         
       // Logical NOT operator 
       bool not = !abl; 
       return (and, or, not); 
 } 


 function bitwiseOp (uint16 aa, uint16 bb) public view returns(uint16, uint16, uint16, uint16,
 uint16, uint16) {

     // Declaring variables 
    uint16 a = 20; 
    uint16 b = 10; 
  
    // Initializing a variable  
    // to '&' value 
    uint16 and = a & b; 
  
    // Initializing a variable  
    // to '|' value 
    uint16  or = a | b; 
  
    // Initializing a variable  
    // to '^' value 
    uint16 xor = a ^ b; 
  
    // Initializing a variable  
    // to '<<' value 
    uint16  leftshift = a << b; 
  
    // Initializing a variable  
    // to '>>' value 
    uint16 rightshift = a >> b; 
    
    // Initializing a variable  
    // to '~' value 
    uint16 not = ~a ; 
    return (and, or, xor, leftshift, rightshift, not);
 }

    function assignOp () public view returns (uint, uint, uint, uint,
    uint
    ) {
        // Declaring variables 
        uint16  assignment = 20; 
        uint  assignment_add = 50; 
        uint  assign_sub = 50; 
        uint  assign_mul = 10; 
        uint  assign_div = 50; 
        uint  assign_mod = 32; 
      
        // Defining function to  
        // demonstrate Assignment Operator 
         assignment_add += 10; 
           assign_sub -= 20; 
           assign_mul *= 10; 
           assign_div /= 10; 
           assign_mod %= 20; 
           return (assignment_add, assign_sub, assign_mul, assign_div, assign_mod); 
    }

   

}