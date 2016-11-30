# Ready to work DAO factory builders

## Information for users

Builder name | Builder address  | Builder abi   | Abi for created contract | Gas for use | Service fee
-------------|------------------|---------------|--------------------------|-------------|-------------
ERC20 token builder | [`0x96876a04abaecf2e4ca290307cee1cf31c04f16a`](https://etherscan.io/address/0x96876a04abaecf2e4ca290307cee1cf31c04f16a) |  [BuilderToken.json](https://raw.githubusercontent.com/airalab/core/master/abi/builder/BuilderToken.json) | [Token.json](https://raw.githubusercontent.com/airalab/core/master/abi/modules/Token.json) | - | 0.1 Ether
ERC20 token with emission builder |  [`0x49b951fea2fe6c112931d584fbeb3f8b7f0b6177`](https://etherscan.io/address/0x49b951fea2fe6c112931d584fbeb3f8b7f0b6177) | [BuilderTokenEmission.json](https://raw.githubusercontent.com/airalab/core/master/abi/builder/BuilderTokenEmission.json) | [TokenEmission.json](https://raw.githubusercontent.com/airalab/core/master/abi/modules/TokenEmission.json) | - | 0.1 Ether
Ether vault contract builder |   [`0x62959d6b524d3ac5f2b9b121b0453233596a4cfa`](https://etherscan.io/address/0x62959d6b524d3ac5f2b9b121b0453233596a4cfa) |  [BuilderTokenEther.json](https://raw.githubusercontent.com/airalab/core/master/abi/builder/BuilderTokenEther.json) | [TokenEther.json](https://raw.githubusercontent.com/airalab/core/master/abi/modules/TokenEther.json) | - | 0.1 Ether
The Blockchain Congress builder | [`0xb4ba41502053b71932d39c904619af0be12509fe`](https://etherscan.io/address/0xb4ba41502053b71932d39c904619af0be12509fe) |  [BuilderCongress.json](https://raw.githubusercontent.com/airalab/core/master/abi/builder/BuilderCongress.json) | [Congress.json](https://raw.githubusercontent.com/airalab/core/master/abi/modules/Congress.json) | - | 0.1 Ether
The Shareholder Association builder |  [`0x4Ce4DB708A280C52551aE1EabBBc23f91B0f179A`](https://etherscan.io/address/0x4Ce4DB708A280C52551aE1EabBBc23f91B0f179A) |  [BuilderAssociation.json](https://raw.githubusercontent.com/airalab/core/master/abi/builder/BuilderAssociation.json) | [Association.json](https://raw.githubusercontent.com/airalab/core/master/abi/modules/Association.json) | - | 0.1 Ether
Liquid democracy builder |   [`0x3E7c9980ab23bAaefD31be0eE277aFD5fd663C3E`](https://etherscan.io/address/0x3E7c9980ab23bAaefD31be0eE277aFD5fd663C3E) |  [BuilderLiquidDemocracy.json](https://raw.githubusercontent.com/airalab/core/master/abi/builder/BuilderLiquidDemocracy.json) | [LiquidDemocracy.json](https://raw.githubusercontent.com/airalab/core/master/abi/modules/LiquidDemocracy.json) | - | 0.1 Ether

## Information for administrators

Contract name               | Gas for deploy Creator | Gas for deploy Builder
----------------------------|-----------------|----------------
ERC20 token                 | 1522923         | 668146
ERC20 token with emission   | 1649812         | 668146
Ether vault contract        | 1631147         | 629905
The Blockchain Congress     | 2972622         | 536012
The Shareholder Association | 2175874         | 559239
Liquid democracy            | 1575802         | 573429
