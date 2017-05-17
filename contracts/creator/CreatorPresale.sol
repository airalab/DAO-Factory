pragma solidity ^0.4.4;

import 'foundation/Presale.sol';

library CreatorPresale {
    function create(address _token, uint256 _bounty, uint256 _donation) returns (Presale)
    { return new Presale(_token, _bounty, _donation); }

    function version() constant returns (string)
    { return "v0.6.3"; }

    function abi() constant returns (string)
    { return '[{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"setOwner","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"hammer","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":false,"inputs":[],"name":"destroy","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"donation","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"bounty","outputs":[{"name":"","type":"uint256"}],"payable":false,"type":"function"},{"constant":false,"inputs":[{"name":"_hammer","type":"address"}],"name":"setHammer","outputs":[],"payable":false,"type":"function"},{"constant":false,"inputs":[],"name":"cancel","outputs":[],"payable":false,"type":"function"},{"constant":true,"inputs":[],"name":"token","outputs":[{"name":"","type":"address"}],"payable":false,"type":"function"},{"inputs":[{"name":"_token","type":"address"},{"name":"_bounty","type":"uint256"},{"name":"_donation","type":"uint256"}],"payable":false,"type":"constructor"},{"payable":true,"type":"fallback"}]'; }
}
