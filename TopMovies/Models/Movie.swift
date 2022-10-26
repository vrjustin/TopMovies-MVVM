//
//  Movie.swift
//  TopMovies
//
//  Created by Justin Maronde on 10/24/22.
//

import Foundation


struct Movie: Decodable {
    let name: Name
    let releaseDate: ReleaseDate?
    let moviePosters: [MoviePoster]?
    
    private enum CodingKeys: String, CodingKey {
        case name = "im:name"
        case releaseDate = "im:releaseDate"
        case moviePosters = "im:image"
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

struct MoviePoster: Decodable {
    let value: String
    let attributes: [String:String]
    
    private enum CodingKeys: String, CodingKey {
        case value = "label"
        case attributes = "attributes"
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
