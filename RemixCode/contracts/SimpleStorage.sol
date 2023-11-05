// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

// ^0.8.21 - if you want to use this version or any above that
// >=0.8.7 <0.9.0 - if you want to use version from specific range of versions

contract SimpleStorage {
    // boolean, uint, int, address, bytes

    /* bool hasFavouriteNumber;
    uint256 favouriteNumber = 5;
    string favouriteNumberInText = "Five";
    int256 favouriteInt = -5;
    address myAddress = 0xAe96bD5Ac375C46CEdAcc2Ef0d1f98EB57cB40F9;
    bytes32 favouriteBytes = "cat"; // 0x6734637dasda344 */

    // This gets initialized to zero!
    uint256 public favouriteNumber;

    function store(uint256 _favouriteNumber) public {
        favouriteNumber = _favouriteNumber;
    }

    // view, pure
    // - when called alone, these functions don't spend gas
    // - disallow modification of state
    // - disallow reading from the blockchain state
    function retrieve() public view returns (uint256) {
        return favouriteNumber;
    }

    function add() public pure returns (uint256) {
        return (1 + 1);
    }
}

// 0xd9145CCE52D386f254917e481eB44e9943F39138
