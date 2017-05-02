//
// AIRA Builder for Market contract
//
// Ethereum address:
//  - Mainnet:
//  - Testnet: 
//

pragma solidity ^0.4.4;
import 'creator/CreatorMarket.sol';
import './Builder.sol';

/**
 * @title BuilderMarket contract
 */
contract BuilderMarket is Builder {
    /**
     * @dev Run script creation contract
     * @param _name Market name
     * @return address new contract
     */
    function create(
        string _name,
        address _base,
        address _quote,
        uint256 _decimals,
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
 
        var inst = CreatorMarket.create(_name, _base, _quote, _decimals);
        getContractsOf[_client].push(inst);
        Builded(_client, inst);
        inst.setOwner(_client);
        inst.setHammer(_client);
        return inst;
    }
}
