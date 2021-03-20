// pragma solidity ^0.3.9 means source code is written for solidity version from 0.3.9 and higher
pragma solidity ^0.3.9;

contract HelloWorld {
    // below variable makes use of package-private type of encapsulation where by name can only be called within the package which
    this file is bundle with
    unit name;
    function set(unit val) public{
            name = val;
    }

    function get() public view (unit){
        return  name;
    }
}

