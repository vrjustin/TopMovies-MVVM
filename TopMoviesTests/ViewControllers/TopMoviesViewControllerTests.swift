//
//  TopMoviesViewControllerTests.swift
//  TopMoviesTests
//
//  Created by Justin Maronde on 10/26/22.
//

import XCTest
@testable import TopMovies

final class TopMoviesViewControllerTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_TopMoviesViewController_InitWithCoder() {
        let sut = TopMoviesViewController(coder: NSCoder())
        XCTAssertNil(sut)
    }

}
