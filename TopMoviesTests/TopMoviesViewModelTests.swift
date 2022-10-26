//
//  TopMoviesViewModelTests.swift
//  TopMoviesTests
//
//  Created by Justin Maronde on 10/26/22.
//

import XCTest
@testable import TopMovies

final class TopMoviesViewModelTests: XCTestCase {
    
    func test_TopMoviesViewModelTests_returnsTitleForItemAtIndexPath() {
        
        let sut = TopMoviesViewModel(topMoviesService: MoviesServiceFactory.create())
        sut.fetchMovies {}
        
        let title = sut.titleForItemAtIndexPath(1)
        
        XCTAssertEqual(title, "Test Movie Title2")
    }

}
