//
//  TopMoviesService.swift
//  TopMovies
//
//  Created by Justin Maronde on 10/24/22.
//

import Foundation

struct TopMoviesService {
    
    func fetchMovies(completion: @escaping ([Movie]?) -> ()) {
        //fetch the data
        let urlString = "https://itunes.apple.com/us/rss/topmovies/limit=25/json"
        let session = URLSession(configuration: URLSessionConfiguration.default)
        let request = URLRequest(url: URL(string: urlString)!)
        let task = session.dataTask(with: request) { (data, response, error) in
            if error != nil {
                completion(nil)
                return
            }
            
            //TODO: Check the response code for valid range.
            
            guard let data = data else {
                completion(nil)
                return
            }
            
            let moviesResponse = try! JSONDecoder().decode(TopMoviesResponse.self, from: data)
            let topMovies = moviesResponse.topMovies.movies
            completion(topMovies)

        }
        task.resume()
        
        //call the completion block
    }
}
