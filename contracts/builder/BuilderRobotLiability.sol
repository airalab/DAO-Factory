pragma solidity ^0.4.18;

import 'creator/CreatorRobotLiability.sol';
import 'builder/Builder.sol';

contract BuilderRobotLiability is Builder {
    mapping(bytes32 => bool) public usedHash;

    bytes constant MSGPREFIX = "0x19457468657265756d205369676e6564204d6573736167653a0a3332";
    
    function recover(bytes32 h, bytes sig) pure public returns (address) {
        var (v, r, s) = signSplit(sig);
        return ecrecover(keccak256(MSGPREFIX, h), v, r, s);
    }
    
    function signSplit(bytes signature) pure public returns (uint8 v, bytes32 r, bytes32 s) {
        uint256 r_;
        uint256 s_;
        for (uint i = 0; i < 32; ++i) {
            r_ = (r_ << 8) + uint8(signature[i]);
            s_ = (s_ << 8) + uint8(signature[i+32]);
        }
        r = bytes32(r_);
        s = bytes32(s_);
        v = uint8(signature[64]);
    }
    
    function create(
        bytes model,
        bytes objective,
        uint256[3] param,
        bytes32 saltA,
        bytes signA,
        bytes32 saltB,
        bytes signB
    ) public {
        require(!usedHash[keccak256(model, objective, param[0], param[1], param[2], saltA)]); 
        require(!usedHash[keccak256(model, objective, param[0], param[1], param[2], saltA)]); 
        usedHash[keccak256(model, objective, param[0], param[1], param[2], saltA)] = true; 
        usedHash[keccak256(model, objective, param[0], param[1], param[2], saltA)] = true; 

        var promisee = recover(keccak256(model, objective, param[0], param[1], param[2], saltA), signA);
        var promisor = recover(keccak256(model, param[0], param[1], param[2], saltB), signB);

        Builded(msg.sender, CreatorRobotLiability.create(
            model, objective, promisee, promisor, param[0], param[1], param[2]));
    }
}
