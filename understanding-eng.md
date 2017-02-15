# Introduction
![DNA_replication_split](/img/DNA_replication_split.svg)

**Replication (from lat. repeat, replicate)** is a crucial mechanism of information transfer in living organisms. It’s a basis for the evolution of humanity and life in general.

It is time for a formation of an autonomous infrastructure of smart contracts within Ethereum ecosystem, the one capable of replication. That will accelerate the population of the network, make user experience simpler,  increase the levels of security while working with smart contracts and provide the authors of contracts a way to  monetise their work. To make this happen Airalab team invites the community to take part in the DAO Factory project.


## DAO factory Glossary

* **DAO FActory** - Autonomous infrastructure for replication of smart contracts inside Ethereum 
* **Replication** - a process of creating a new smart contract based on the code (stored?) deployed in the Creator contracts.
* **Creator** -  a smart contract built in a form of a library. It contains original version of a replicable code.
* **Builder** - a smart contract that sends Creator contract data required for Creator’s constructor.


## How does it work

[Smart contracts are capable of creating smart contracts](http://solidity.readthedocs.io/en/develop/control-structures.html#creating-contracts-via-new). We call this process - replication. A smart contract that contains a replicable code is called Creator, and a contract that the user is interacting with - Builder.


We introduce such entities as Creator and Builder to allow flexible configuration of the contructor on the level of Builder, which is calling the Creator. Multiple Builders can work with one Creator, and each of the Builders can perform it’s own logic while working with the constructor.

![DAO Factory process](/img/DAO-Factory-Ethereum-Dev-1.jpg)

While using Factory one can choose a Builder for a required contract, based on the description, analysis of transactions to this contract, information about which projects went through a process of replication using this particular builder.
This means that a an inexperienced user doesn’t have to go through the process of compiling and sending the contract to Ethereum. It provides an objective view on previous usage of a contract in question by the community, and respects author’s rights.
