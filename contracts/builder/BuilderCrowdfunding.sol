//
// AIRA Builder for Crowdfunding contract
//
// Ethereum address:
//  - Mainnet:
//  - Testnet: 
//

pragma solidity ^0.4.4;
import 'creator/CreatorCrowdfunding.sol';
import './Builder.sol';

/**
 * @title BuilderCrowdfunding contract
 */
contract BuilderCrowdfunding is Builder {
    /**
     * @dev Run script creation contract
     * @return address new contract
     */
    function create(
        address _fund,
        address _bounty,
        string  _reference,
        uint256 _startBlock,
        uint256 _stopBlock,
        uint256 _minValue,
        uint256 _maxValue,
        uint256 _scale,
        uint256 _startRatio,
        uint256 _reductionStep,
        uint256 _reductionValue,
        address _client
    ) payable returns (address) {
        if (buildingCostWei > 0 && beneficiary != 0) {
            // Too low value
            if (msg.value < buildingCostWei) throw;
            // Beneficiary send
            if (!beneficiary.send(buildingCostWei)) throw;
            // Refund
            if (msg.value > buildingCostWei) {
                if (!msg.sender.send(msg.value - buildingCostWei)) throw;
            }
        } else {
            // Refund all
            if (msg.value > 0) {
                if (!msg.sender.send(msg.value)) throw;
            }
        }

        if (_client == 0)
            _client = msg.sender;
 
        var inst = CreatorCrowdfunding.create(_fund, _bounty, _reference,
                                              _startBlock, _stopBlock,
                                              _minValue, _maxValue, _scale,
                                              _startRatio, _reductionStep,
                                              _reductionValue);
        inst.setOwner(_client);
        inst.setHammer(_client);

        getContractsOf[_client].push(inst);
        Builded(_client, inst);
        return inst;
    }
}
