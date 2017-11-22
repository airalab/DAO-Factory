pragma solidity ^0.4.18;

/**
 * @title Creator library interface
 */
library Creator {
    /**
     * @dev Get version of created contract
     */
    function version() public pure returns (string);

    /**
     * @dev Get ABI of created contract
     */
    function abi() public pure returns (string);
}
