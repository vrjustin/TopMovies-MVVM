//
//  MovieDetailViewController.swift
//  TopMovies
//
//  Created by Justin Maronde on 10/25/22.
//

import Foundation
import UIKit

class MovieDetailViewController: UIViewController {
    
    // MARK: - PROPERTIES
    var viewModel: MovieDetailsViewModel!
    
    // MARK: - LIFECYCLE
    
    init(viewModel: MovieDetailsViewModel!) {
        super.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: - HELPERS
    
    private func setupUI() {
        view.backgroundColor = .systemPink
    }
    
    
}
