// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ERC20Token is ERC20 {
    //organiser=org
    //totalDonations= tD
    address private org;
    uint256 private tD;

    mapping(address => uint256) private donations;

    modifier onlyOrganizer() {
        require(
            msg.sender == org,
            "Only the organizer can perform this action"
        );
        _;
    }

    constructor(uint256 initialSupply) ERC20("FundraiserToken", "FDRT") {
        _mint(msg.sender, initialSupply);
        org = msg.sender;
    }

    function mintTokens(uint256 amount) external onlyOrganizer {
        require(amount > 0, "Mint amount must be greater than zero");
        _mint(org, amount);
    }

    function donateTokens(address to, uint256 amount) public {
        require(to != address(0), "Cannot donate to the zero address");
        require(amount > 0, "Donation amount must be greater than zero");
        require(
            balanceOf(msg.sender) >= amount,
            "Insufficient balance to donate"
        );

        _transfer(msg.sender, to, amount);
        donations[msg.sender] += amount;
        tD += amount;
    }

    function burnTokens(uint256 amount) public {
        require(amount > 0, "Burn amount must be greater than zero");
        require(
            balanceOf(msg.sender) >= amount,
            "Insufficient balance to burn"
        );

        _burn(msg.sender, amount);
    }

  // this function is checking total donations 
    function viewTotal() public view onlyOrganizer returns (uint256) {
        return tD;
    }
}
