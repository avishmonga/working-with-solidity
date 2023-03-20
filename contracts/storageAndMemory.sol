//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.13;


contract StorageAndMemory {
    uint num; //stored in storage 
    struct Movie {
        string name;
        uint id;
    } // stored in storage
    Movie movie; // stored in storage

    function addMovie(string memory _name , uint _id) external returns (Movie memory){
        //here _name and _id  is stored in memory it only exist unitil function exec.
        movie.name = _name;
        movie.id = _id;
        return movie;
    }

    function getMovieName() external view returns (string memory){
        return movie.name;
    }

}