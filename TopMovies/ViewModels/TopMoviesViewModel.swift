//
//  TopMoviesViewModel.swift
//  TopMovies
//
//  Created by Justin Maronde on 10/24/22.
//

import Foundation

class TopMoviesViewModel {
    
    // MARK: - PROPERTIES
    
    var topMoviesService: TopMoviesService!
    var fetchedMovies: [Movie]?
    
    // MARK: - LIFECYCLE
    
    init(topMoviesService: TopMoviesService!) {
        self.topMoviesService = topMoviesService
    }
    
    // MARK: - API
    func fetchMovies(completion: @escaping () -> ()) {
        topMoviesService.fetchMovies { movies in
            if let movies = movies {
                self.fetchedMovies = movies
                completion()
            }
        }
    }
    
    // MARK: - TABLEVIEW DATA SOURCE
    func numberOfItemsInSection(_ section: Int) -> Int {
        return fetchedMovies?.count ?? 0
    }
    
    func titleForItemAtIndexPath(_ idx: Int) -> String {
        let movie = fetchedMovies?[idx]
        guard let title = movie?.name.value else { return "" }
        return title
    }
    
    func releaseYearForItemAtIndex(_ idx: Int) -> String {
        let movie = fetchedMovies?[idx]
        guard let releaseDateDate = movie?.releaseDate.value else { return "" }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM d, y"
        let str = dateFormatter.string(from: releaseDateDate)
        
        return str
    }
}
