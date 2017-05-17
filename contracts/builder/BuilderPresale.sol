//
// AIRA Builder for Congress contract
//
// Ethereum address:
//  - Mainnet:
//  - Testnet: 
//

pragma solidity ^0.4.4;
import 'creator/CreatorPresale.sol';
import './Builder.sol';

/**
 * @title BuilderPresale contract
 */
contract BuilderPresale is Builder {
    /**
     * @dev Run script creation contract
     * @return address new contract
     */
    function create(address _token,
                    uint256 _bounty,
                    uint256 _donation,
                    address _client) payable returns (address) {
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
 
        var inst = CreatorPresale.create(_token, _bounty, _donation);
        inst.setOwner(_client);
        inst.setHammer(_client);
        getContractsOf[_client].push(inst);
        Builded(_client, inst);
        return inst;
    }
}
