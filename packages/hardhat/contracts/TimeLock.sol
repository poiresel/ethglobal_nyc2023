// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;


import "@openzeppelin/contracts/governance/TimelockController.sol";

contract Timelock is TimelockController {

    // minDelay:
    // proposers:
    // executors:
    constructor(
        uint256 minDelay,
        address[] memory proposers,
        address[] memory executors,
        address administrator
    ) TimelockController(minDelay, proposers, executors, administrator) {}
}
