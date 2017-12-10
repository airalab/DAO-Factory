pragma solidity ^0.4.18;

import 'creator/CreatorRobotLiability.sol';
import 'builder/Builder.sol';

contract BuilderRobotLiability is Builder {
    /**
     * @dev Used market order hashes tracking.
     */
    mapping(bytes32 => bool) public usedHash;

    /* Constants */
    ERC20 public constant utility = ERC20(0x5DF531240f97049ee8d28A8E51030A3b5a8e8CE4);
    ERC20 public constant weth    = ERC20(0xC00Fd9820Cd2898cC4C054B7bF142De637ad129A);
    bytes constant MSGPREFIX = "\x19Ethereum Signed Message:\n32";

    mapping(bytes32 => uint256) marketFee;

    function getMarketFee(bytes _model) public view returns (uint256)
    { return marketFee[keccak256(_model)]; }

    function setMarketFee(bytes _model, uint256 _fee) public onlyOwner
    { marketFee[keccak256(_model)] = _fee; }

    address public marketSupply;

    function setMarketSupply(address _supply) public onlyOwner
    { marketSupply = _supply; }
    
    /**
     * @dev Create robot liability contract
     * @param _model Robot behaviour model
     * @param _objective Task for the robot
     * @param _param Liability financial params: [cost, count, fee]
     * @param _sign Liability cyptographic params: [saltA, vA, rA, sA, saltB, vB, rB, sB]
     */
    function create(
        bytes _model,
        bytes _objective,
        uint256[3] _param,
        bytes32[8] _sign
    ) public {
        var askHash = keccak256(_model, _objective, _param[0], _param[1], _param[2], _sign[0]);
        var bidHash = keccak256(_model, _param[0], _param[1], _param[2], _sign[4]);

        require(!usedHash[askHash] && !usedHash[bidHash]);
        usedHash[askHash] = true;
        usedHash[bidHash] = true;

        var promisee = ecrecover(keccak256(MSGPREFIX, askHash), uint8(_sign[1]), _sign[2], _sign[3]);
        var promisor = ecrecover(keccak256(MSGPREFIX, bidHash), uint8(_sign[5]), _sign[6], _sign[7]);

        var inst = CreatorRobotLiability.create(
						_model, _objective, promisee, promisor, _param[0], _param[1], _param[2]);
        require(weth.transferFrom(promisee, inst, _param[0] * _param[1]));
        require(weth.transferFrom(promisee, marketSupply,
                                  _param[0] * _param[1] * marketFee[keccak256(_model)] / 100));
        require(utility.transferFrom(promisor, inst, _param[2]));

        getContractsOf[msg.sender].push(inst);
        Builded(msg.sender, inst);
    }
}
