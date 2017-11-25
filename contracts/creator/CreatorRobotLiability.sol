pragma solidity ^0.4.18;

import 'liability/RobotLiability.sol';

library CreatorRobotLiability {
    function create(
        bytes _model,
        bytes _objective,
        address _promisee,
        address _promisor,
        uint256 _cost,
        uint256 _count,
        uint256 _fee
    ) public returns (RobotLiability) {
        return new RobotLiability(_model, _objective, _promisee, _promisor, _cost, _count, _fee);
    }

    function version() public pure returns (string)
    { return "v0.6.5"; }

    function abi() public pure returns (string)
    { return '[{"constant":true,"inputs":[],"name":"count","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"model","outputs":[{"name":"","type":"bytes"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"setOwner","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"cost","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"objective","outputs":[{"name":"","type":"bytes"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"weth","outputs":[{"name":"","type":"address"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"utility","outputs":[{"name":"","type":"address"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"hammer","outputs":[{"name":"","type":"address"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":true,"inputs":[],"name":"promisee","outputs":[{"name":"","type":"address"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[],"name":"reject","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"result","outputs":[{"name":"","type":"bytes"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[],"name":"confirm","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":false,"inputs":[],"name":"destroy","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"_result","type":"bytes"}],"name":"setResult","outputs":[{"name":"success","type":"bool"}],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"promisor","outputs":[{"name":"","type":"address"}],"payable":false,"stateMutability":"view","type":"function"},{"constant":false,"inputs":[{"name":"_hammer","type":"address"}],"name":"setHammer","outputs":[],"payable":false,"stateMutability":"nonpayable","type":"function"},{"constant":true,"inputs":[],"name":"fee","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"view","type":"function"},{"inputs":[{"name":"_model","type":"bytes"},{"name":"_objective","type":"bytes"},{"name":"_promisee","type":"address"},{"name":"_promisor","type":"address"},{"name":"_cost","type":"uint256"},{"name":"_count","type":"uint256"},{"name":"_fee","type":"uint256"}],"payable":false,"stateMutability":"nonpayable","type":"constructor"},{"anonymous":false,"inputs":[],"name":"ValidationReady","type":"event"},{"anonymous":false,"inputs":[],"name":"Confirmed","type":"event"},{"anonymous":false,"inputs":[],"name":"Rejected","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"name":"objective","type":"bytes"}],"name":"Objective","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"name":"result","type":"bytes"}],"name":"Result","type":"event"}]'; }
}
