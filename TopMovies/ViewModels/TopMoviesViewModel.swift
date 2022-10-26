//
//  TopMoviesViewModel.swift
//  TopMovies
//
//  Created by Justin Maronde on 10/24/22.
//

import Foundation

class TopMoviesViewModel {
    
    // MARK: - PROPERTIES
    
    var topMoviesService: MoviesService!
    var fetchedMovies: [Movie]?
    
    // MARK: - LIFECYCLE
    
    init(topMoviesService: MoviesService!) {
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
        guard let releaseDateDate = movie?.releaseDate?.value else { return "" }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM d, y"
        let str = dateFormatter.string(from: releaseDateDate)
        
        return str
    }
    
    func posterForItemAtIndex(_ idx: Int) -> URL? {
        let movie = fetchedMovies?[idx]
        guard let posters = movie?.moviePosters else { return nil }
        var largestPosterIdx = 0
        var largestPosterHeight = 0
        
        for i in 0..<posters.count {
            let poster = posters[i]
            let posterHeightStr = poster.attributes["height"]
            guard let posterHeightStr = posterHeightStr else { return nil }
            if let posterHeight = Int(posterHeightStr) {
                if posterHeight > largestPosterHeight {
                    largestPosterHeight = posterHeight
                    largestPosterIdx = i
                }
            }
        }
        
        let largestPoster = posters[largestPosterIdx]
        
        return URL(string: largestPoster.value)
    }
}
