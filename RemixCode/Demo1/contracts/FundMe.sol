// Get funds from users
// Widraw funds
// Set a minimum funding value in USD

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract FundMe {
    uint256 public minimumUsd = 50;

    function fund() public payable {
        // Want to be able to set a minimum fund amount in USD
        // 1. How do we send ETH to this contract?
        require(msg.value >= minimumUsd, "Didn't send enough!"); // 1e18 == 1 * 10 ** 18 == 1000000000000000000
    }

    function getPrice() public {
        // ABI
        // Address 0x1a81afB8146aeFfCFc5E50e8479e826E7D55b910

        AggregatorV3Interface(0x1a81afB8146aeFfCFc5E50e8479e826E7D55b910).version();
    }

    function getVersion() public view returns (uint256) {
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x1a81afB8146aeFfCFc5E50e8479e826E7D55b910);
        return  priceFeed.version();
    }

    function getConversionRate() public {

    }

    // function withdraw(){}
}
