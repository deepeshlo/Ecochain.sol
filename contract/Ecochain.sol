// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title Eco Chain
 * @dev A blockchain-based initiative for supporting and tracking eco-friendly projects.
 * Users can contribute funds, and the owner can allocate them to verified green initiatives.
 */
contract Project {
    address public owner;
    uint256 public totalFunds;

    struct Initiative {
        string name;
        uint256 fundsReceived;
        bool isActive;
    }

    mapping(uint256 => Initiative) public initiatives;
    uint256 public initiativeCount;

    constructor() {
        owner = msg.sender;
    }

    /// @notice Add a new eco-friendly initiative (only owner)
    function addInitiative(string memory _name) external {
        require(msg.sender == owner, "Only owner can add initiatives");
        initiatives[initiativeCount] = Initiative(_name, 0, true);
        initiativeCount++;
    }

    /// @notice Contribute funds to support eco initiatives
    function contribute() external payable {
        require(msg.value > 0, "Contribution must be greater than zero");
        totalFunds += msg.value;
    }

    /// @notice Allocate funds from the pool to a specific initiative (only owner)
    function allocateFunds(uint256 _id, uint256 _amount) external {
        require(msg.sender == owner, "Only owner can allocate funds");
        require(_id < initiativeCount, "Invalid initiative ID");
        require(initiatives[_id].isActive, "Initiative is not active");
        require(_amount <= address(this).balance, "Insufficient balance");

        initiatives[_id].fundsReceived += _amount;
        payable(owner).transfer(_amount);
        totalFunds -= _amount;
    }

    /// @notice Get the current contract balance
    function getBalance() external view returns (uint256) {
        return address(this).balance;
    }
}

