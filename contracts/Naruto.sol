// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import "erc721a/contracts/ERC721A.sol";

contract Naruto is ERC721A {
    address public owner;

    // Base url for the nfts
    string baseUrl =
        "https://chocolate-rigid-booby-720.mypinata.cloud/ipfs/Qmf1Gyqp17fQjT8zgFsXYmYFVFpSH6pJjPgsRbA3N9rR6S/?_gl=1*7iqn9k*_ga*MTc5MzUwNzE3Ni4xNjkzMTE2ODU2*_ga_5RMPXG14TE*MTY5MzExNjg1NS4xLjEuMTY5MzExNzA2Ny42MC4wLjA";

   
    constructor() ERC721A("NARUTO", "NRT") {
        owner = msg.sender;
    }

    // Modifier that only allows the owner to execute a function
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can perform this action!");
        _;
    }

    function promptUsed()public pure returns(string memory){
        string memory description = "Naruto";
        return (description);
    }
    // Function to mint NFT which only owner can perform
    function mint(uint256 quantity) external payable onlyOwner() {
        require(quantity <= 5,"More than 5 NFTs can't be minted.");
            
        _mint(msg.sender, quantity);
    }

    // Override the baseURI function to return the base URL for the NFTs
    function _baseURI() internal view override returns (string memory) {
        return baseUrl;
    }

    
}
