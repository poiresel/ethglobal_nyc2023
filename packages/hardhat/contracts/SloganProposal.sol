//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

// Useful for debugging. Remove when deploying to a live network.
import "hardhat/console.sol";

// Use openzeppelin to inherit battle-tested implementations (ERC20, ERC721, etc)
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * A smart contract that allows changing a state variable of the contract and tracking the changes
 * @author poiresel
 */
contract SloganProposal is Ownable {
	// State Variables
	string public hoaSlogan = "";

	// Events: a way to emit log statements from smart contract that can be listened to by external parties
	event SloganChange(
		address indexed initiator,
		string newGreeting
	);

    constructor(address _owner) {
        _transferOwnership(_owner);
    }

	/**
	 * Function that allows anyone to change the state variable "greeting" of the contract and increase the counters
	 *
	 * @param _newHOAslogan (string memory) - new greeting to save on the contract
	 */
	function setSlogan(string memory _newHOAslogan) onlyOwner public  {
		// Print data to the hardhat chain console. Remove when deploying to a live network.
		console.log(
			"Setting new slogan '%s' from %s",
			_newHOAslogan,
			msg.sender
		);

		// Change state variables
		hoaSlogan = _newHOAslogan;
		// emit: keyword used to trigger an event
		emit SloganChange(msg.sender, _newHOAslogan);
	}

	/**
	 * Function that allows the owner to withdraw all the Ether in the contract
	 * The function can only be called by the owner of the contract as defined by the isOwner modifier
	 */
	function withdraw() public onlyOwner {
		(bool success, ) = owner().call{ value: address(this).balance }("");
		require(success, "Failed to send Ether");
	}

	/**
	 * Function that allows the contract to receive ETH
	 */
	receive() external payable {}
}
