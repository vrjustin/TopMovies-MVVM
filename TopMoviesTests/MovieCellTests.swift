//
//  MovieCellTests.swift
//  TopMoviesTests
//
//  Created by Justin Maronde on 10/26/22.
//

import XCTest
@testable import TopMovies

final class MovieCellTests: XCTestCase {

    func test_MovieCell_InitWithCoder() {
        let sut = MovieCell(coder: NSCoder())
        XCTAssertNil(sut)
    }

}
