
pragma solidity ^0.8.0;

contract videoProviderStorage{
    
    
    
    String Name;
    uint Age;
    
    

    
    function SetvideoProviderStorage( String _Name, uint _Age ) public {
        Name= _Name;
        Age= _Age;
    
    }
    
    mapping(uint => bool) public admin;
    mapping(uint => bool)  public  User;
    
    event newAdmin( address from,adress newAdmin);
    event new User( address newUser);
    
    
    
    
    
}
    
contract Device is videoProviderStorage{
    
    constructor(){
        setName("suraj");
        setAge(24);
        
    }
    
    function Viewer() public  pure returns (String memory){
        return " i am happy with my Device";
    }
    
    
}
    function controller() public{
        modifier onlyAdmin(){
        require(admin[msg.sender],"videoProviderStorage: onlyAdmin can deploy and update contract)
    
            
            
            
        }
        
    }
    
}
