//SPDX-License-Identifier:UNLINCENSED

pragma solidity ^0.8.13;


contract TwoCall{
     struct Movie {
         string name;
         uint releaseDate;
     }
     Movie movie;

    function addMovie ( string memory  _name , uint _releaseDate) public returns (string memory){
        movie.name = _name;
        movie.releaseDate = _releaseDate;
        return movie.name;
    }

}

contract OneCall {
    struct Movie {
         string name;
         uint releaseDate;
     }
     Movie movie;
    function addMovie(address _contractAddress , string memory _name , uint _releaseDate) public returns (string memory) {
      (bool success, bytes memory data) = _contractAddress.delegatecall(
            abi.encodeWithSignature("addMovie(string,uint256)",  _name,_releaseDate)
        );
        return movie.name;
    }
}