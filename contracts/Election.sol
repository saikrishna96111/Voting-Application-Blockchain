pragma solidity ^0.5.16;

contract Election {

	//Model a Candidate
	struct Candidate {
		uint id;
		string name;
		uint voteCount;
	}

	//store candidates
	mapping(uint => Candidate) public candidates;

	//store candidates count
	uint public candidatesCount;

	// string public candidate;
	constructor () public {
		// candidate = "Candidate 1";
		addCandidate("Candidate 1");
		addCandidate("Candidate 2");
	}

	function addCandidate (string memory _name) private {
		candidatesCount ++;
		candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
	}
}