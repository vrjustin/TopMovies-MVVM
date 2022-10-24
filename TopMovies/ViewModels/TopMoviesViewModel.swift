//
//  TopMoviesViewModel.swift
//  TopMovies
//
//  Created by Justin Maronde on 10/24/22.
//

import Foundation

struct TopMoviesViewModel {
    
    func numberOfItemsInSection(_ section: Int) -> Int {
        return 10
    }
    
    func titleForItemAtIndexPath(_ indexPath: IndexPath) -> String {
        //TODO: Remove hardcoded value - get it from the model object retrieved from the Service.
        return "Jaws Returns!"
    }
}
