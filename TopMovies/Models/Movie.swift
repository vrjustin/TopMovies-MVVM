//
//  Movie.swift
//  TopMovies
//
//  Created by Justin Maronde on 10/24/22.
//

import Foundation


struct Movie: Decodable {
    let name: Name
    
    private enum CodingKeys: String, CodingKey {
        case name = "im:name"
    }
}

struct Name: Decodable {
    let label: String
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
