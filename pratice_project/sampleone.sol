//  pragma solidity >=0.4.0 <0.6.0 means the source code is written for solidity for version from 0.40 to 0.60
pragma solidity >=0.4.0 <0.6.0;

import sampleImport from './sampleImport;
contract SimpleStorage {
   uint storedData;
   function set(uint x) public {
      storedData = x;
   }
   function get() public view returns (uint) {
      return storedData;
   }
}