//
//  TopMoviesServiceMock.swift
//  TopMoviesTests
//
//  Created by Justin Maronde on 10/26/22.
//

import Foundation

class TopMoviesServiceMock: MoviesService {
    
    
    func fetchMovies(completion: @escaping ([Movie]?) -> ()) {
        
        let testMovie1 = Movie(name: Name(value: "Test Movie Title"), releaseDate: nil, moviePosters: nil)
        let testMovie2 = Movie(name: Name(value: "Test Movie Title2"), releaseDate: nil, moviePosters: nil)
        let movies: [Movie] = [testMovie1, testMovie2]

        completion(movies)
    }
}
