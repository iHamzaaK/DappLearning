pragma solidity 0.5.16;

contract Election{
    //Model
    struct Candidate{
        uint id;
        string name;
        uint voteCount;
    }
    //Store
    //Fetch
    mapping(uint => Candidate) public candidates;

    //Store Count
    uint public candidatesCount;

    constructor() public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
        addCandidate("Candidate 3");
    }

    function addCandidate (string memory _name) private{
        candidatesCount ++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }
}