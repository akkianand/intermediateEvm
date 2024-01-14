// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EvmMod1 {
    uint public EvaluationScore;
    address owner ; 
    constructor(){
        owner = msg.sender; 
    }

    function Evaluate(uint _score , address yourAddress) external {
        EvaluationScore = _score;
        revertIfNotOwner(yourAddress);
        require(_score >= 0 && _score <= 100, "Invalid score range");
        assert(_score >= 50);

    }
        function revertIfNotOwner( address yourAddress) public view   {
            if( owner != yourAddress ){
                revert("only owner can evaluate");
            }
    }
}
