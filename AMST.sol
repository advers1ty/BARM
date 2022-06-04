pragma solidity ^0.4.23;

import "./DateTime.sol";

contract AMST {
	address public HP;
	address public CSP = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    
	struct AMS{
		uint256[2] AMS1;
		uint256[2] AMS2;
        uint expiryTime_timestamp;
	}
    
    mapping(bytes32 => AMS) internal ams;
    
    function AMST() public {
		HP = msg.sender;
    }

	function Submit(uint256[2] AMS1, uint256[2] AMS2, uint expiryTime_timestamp) public returns (address addr){
		require(msg.sender == HP);
		bytes32 index = keccak256(AMS1,AMS2);
        ams[index].AMS1 = AMS1;
		ams[index].AMS2 = AMS2;
        ams[index].expiryTime_timestamp = expiryTime_timestamp;
        return msg.sender;
    }	

    function Query(uint256[2] AMS1, uint256[2] AMS2) public view returns (bool result){
		require(msg.sender == CSP);
		bytes32 index = keccak256(AMS1,AMS2);
		if(ams[index].AMS1[0] == AMS1[0] && ams[index].AMS1[1] == AMS1[1] && ams[index].AMS2[0] == AMS2[0]  && ams[index].AMS2[1] == AMS2[1] && block.timestamp < ams[index].expiryTime_timestamp)
		{
			return true;
		}
        return false;
    }

	function Revoke(uint256[2] AMS1, uint256[2] AMS2) public{
		require(msg.sender == HP);		
        bytes32 index = keccak256(AMS1,AMS2);
		if(ams[index].AMS1[0] == AMS1[0] && ams[index].AMS1[1] == AMS1[1] && ams[index].AMS2[0] == AMS2[0]  && ams[index].AMS2[1] == AMS2[1])
		{
			delete ams[index];
		}
    }

}
