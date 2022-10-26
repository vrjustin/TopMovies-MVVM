//
//  MoviesServiceFactory.swift
//  TopMovies
//
//  Created by Justin Maronde on 10/26/22.
//

import Foundation

struct MoviesServiceFactory {
    static func create() -> MoviesService {
        
        let isRunningUnitTests = NSClassFromString("XCTest") != nil
        if isRunningUnitTests {
            return TopMoviesServiceMock()
        }
        return TopMoviesService()
    }
}
