# Ready to work DAO factory builders

> Available at [KOVAN](https://kovan.etherscan.io) network

## Information for users

Builder name | Builder address  | Builder abi   | Abi for created contract | Gas for use | Service fee
-------------|------------------|---------------|--------------------------|-------------|-------------
ERC20 token builder | [`0x07c42A3a833560db329954DeaD24FE0a82151978`](https://kovan.etherscan.io/address/0x07c42A3a833560db329954DeaD24FE0a82151978) |  [BuilderToken.json](https://raw.githubusercontent.com/airalab/core/master/abi/builder/BuilderToken.json) | [Token.json](https://raw.githubusercontent.com/airalab/core/master/abi/modules/Token.json) | - | 0.1 Ether
ERC20 token with emission builder |  [`0x558295986EBa9e581359D046bD293Ca3bfCd2fA9`](https://kovan.etherscan.io/address/0x558295986EBa9e581359D046bD293Ca3bfCd2fA9) | [BuilderTokenEmission.json](https://raw.githubusercontent.com/airalab/core/master/abi/builder/BuilderTokenEmission.json) | [TokenEmission.json](https://raw.githubusercontent.com/airalab/core/master/abi/modules/TokenEmission.json) | - | 0.1 Ether
Ether vault contract builder |   [`0x2d5e9A36fA325dF741d7920dCcC6D70Af621F2a0`](https://kovan.etherscan.io/address/0x2d5e9A36fA325dF741d7920dCcC6D70Af621F2a0) |  [BuilderTokenEther.json](https://raw.githubusercontent.com/airalab/core/master/abi/builder/BuilderTokenEther.json) | [TokenEther.json](https://raw.githubusercontent.com/airalab/core/master/abi/modules/TokenEther.json) | - | 0.1 Ether
The Blockchain Congress builder | [`0xDf4A4EFa1d849038BDCA08015Dc5dC18fc0B59b1`](https://kovan.etherscan.io/address/0xDf4A4EFa1d849038BDCA08015Dc5dC18fc0B59b1) |  [BuilderCongress.json](https://raw.githubusercontent.com/airalab/core/master/abi/builder/BuilderCongress.json) | [Congress.json](https://raw.githubusercontent.com/airalab/core/master/abi/modules/Congress.json) | - | 0.1 Ether
Crowdfunding builder |   [`0x34fa9a12c4B474098cDb89f83D62A964f234258a`](https://kovan.etherscan.io/address/0x34fa9a12c4B474098cDb89f83D62A964f234258a) |  [BuilderCrowdfunding.json](https://raw.githubusercontent.com/airalab/core/master/abi/builder/BuilderCrowdfunding.json) | [Proxy.json](https://raw.githubusercontent.com/airalab/core/master/abi/modules/Crowdfunding.json) | - | 0.1 Ether
The Shareholder Association builder |  [``](https://kovan.etherscan.io/address/) |  [BuilderAssociation.json](https://raw.githubusercontent.com/airalab/core/master/abi/builder/BuilderAssociation.json) | [Association.json](https://raw.githubusercontent.com/airalab/core/master/abi/modules/Association.json) | - | 0.1 Ether
Liquid democracy builder |   [``](https://kovan.etherscan.io/address/) |  [BuilderLiquidDemocracy.json](https://raw.githubusercontent.com/airalab/core/master/abi/builder/BuilderLiquidDemocracy.json) | [LiquidDemocracy.json](https://raw.githubusercontent.com/airalab/core/master/abi/modules/LiquidDemocracy.json) | - | 0.1 Ether
Proxy account builder |   [``](https://kovan.etherscan.io/address/) |  [BuilderProxy.json](https://raw.githubusercontent.com/airalab/core/master/abi/builder/BuilderProxy.json) | [Proxy.json](https://raw.githubusercontent.com/airalab/core/master/abi/modules/Proxy.json) | - | 0.1 Ether
Liability market builder |   [`0x46907c3a95d92ebC1A872d165E92aFfc197ce6ec`](https://kovan.etherscan.io/address/0x46907c3a95d92ebC1A872d165E92aFfc197ce6ec) |  [BuilderLiabilityMarket.json](https://raw.githubusercontent.com/airalab/DAO-Factory/develop/abi/builder/BuilderLiabilityMarket.json) | [LiabilityMarket.json](https://raw.githubusercontent.com/airalab/core/develop/abi/modules/LiabilityMarket.json) | - | 0 Ether

## Information for administrators

Contract name               | Gas for deploy Creator | Gas for deploy Builder
----------------------------|-----------------|----------------
ERC20 token                 | 1522923         | 668146
ERC20 token with emission   | 1649812         | 668146
Ether vault contract        | 1631147         | 629905
The Blockchain Congress     | 2972622         | 536012
The Shareholder Association | 2175874         | 559239
Liquid democracy            | 1575802         | 573429
Proxy account               | 1880751         | 632606
