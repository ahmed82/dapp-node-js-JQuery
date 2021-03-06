pragma solidity ^0.4.18;
//pragma solidity >=0.7.0 <0.8.0;

contract AhmedContract {
    
    string fName;
    uint age;
    address owner;
    
    function Coursetro() public {     // Add this constructor
        owner = msg.sender;
    }
    
       modifier onlyOwner {
        require(msg.sender == owner); //if true ?
        _;                           // return body
    }
    
    event Instructor(
       string name,
       uint age
    );
    
    
    
    function setInstructor(string _fName, uint _age) public {
       fName = _fName;
       age = _age;
      /* Instructor(_fName, _age);*/
    }
    
    
    function getInstructor() view public returns (string, uint) {
       return (fName, age);
    }
    
}