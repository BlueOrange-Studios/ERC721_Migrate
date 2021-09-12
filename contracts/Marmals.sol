// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract Marmal is Ownable, ERC721{

    // Coordinate of where a Marmal is found
    struct Coord {
        uint32 long; // longitude
        uint32 lat; // latitude
        uint32 depth; // depth
    }

    // Super MetaData of a Marmal
    struct MetaData {
        string name;
        string kind;
        Coord found;
    }

    mapping(uint256 => MetaData) id_to_mrml;

    constructor() ERC721("Marmal", "MRML") {}

    function get_token_id(uint32 long, uint32 lat, uint32 depth) pure internal returns(uint256) {
        uint32 long_max = 999;
        uint32 lat_max = 999;
        uint32 depth_max = 999;

        require(long>=0 &&lat>=0 &&depth>=0 &&long<=long_max&&lat<=lat_max&&depth<=depth_max);
        return uint256(long) * (10**6) + uint256(lat) * (10**3) + uint256(depth);
    }

    // mint MRML token to ethereum blockchain
    function mint(uint32 long, uint32 lat, uint32 depth, string memory name, string memory kind) internal {
        uint256 tokenId = get_token_id(long, lat, depth);

        // store id to metadata mapping
        id_to_mrml[tokenId] = MetaData(name, kind, Coord(long, lat, depth));

        _safeMint(msg.sender, tokenId);
    }

    // TODO claim MRML by sender
    function claim(uint32 long, uint32 lat, uint32 depth, string calldata name, string calldata kind) external payable {

    }
}