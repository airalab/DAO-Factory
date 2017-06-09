//
// AIRA Builder for AiraEstimator contract
//
// Ethereum address:
//  - Mainnet:
//  - Testnet: 
//

pragma solidity ^0.4.4;
import 'creator/CreatorAiraEstimator.sol';
import './Builder.sol';

/**
 * @title BuilderAiraEstimator contract
 */
contract BuilderAiraEstimator is Builder {
    /**
     * @dev Run script creation contract
     * @param _client is a contract destination address (zero for sender)
     * @return address new contract
     */
    function create(
        uint256 _visionaryFee,
        uint256 _investorsFee,
        uint256 _metricsPrice,
        address _metrics,
        address _air,
        address _metricsMarket,
        address _airaMarket,
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
 
        var inst = CreatorAiraEstimator.create(_visionaryFee,
                                               _investorsFee,
                                               _metricsPrice,
                                               _metrics,
                                               _air,
                                               _metricsMarket,
                                               _airaMarket);
        getContractsOf[_client].push(inst);
        Builded(_client, inst);
        inst.setOwner(_client);
        inst.setHammer(_client);
        return inst;
    }
}
