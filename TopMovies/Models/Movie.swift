//
//  Movie.swift
//  TopMovies
//
//  Created by Justin Maronde on 10/24/22.
//

import Foundation


struct Movie: Decodable {
    let name: Name
    let releaseDate: ReleaseDate
    
    private enum CodingKeys: String, CodingKey {
        case name = "im:name"
        case releaseDate = "im:releaseDate"
    }
}

struct Name: Decodable {
    let value: String
    
    private enum CodingKeys: String, CodingKey {
        case value = "label"
    }
}

struct ReleaseDate: Decodable {
    let value: Date
    
    private enum CodingKeys: String, CodingKey {
        case value = "label"
    }
}

// Top Level Response Model

struct TopMoviesResponse: Decodable {
    let topMovies: Movies
    
    private enum CodingKeys: String, CodingKey {
        case topMovies = "feed"
    }
}

struct Movies: Decodable {
    let movies: [Movie]
    
    private enum CodingKeys: String, CodingKey {
        case movies = "entry"
    }
}
