//
//  TopMoviesViewController.swift
//  TopMovies
//
//  Created by Justin Maronde on 10/24/22.
//

import Foundation
import UIKit

private let movieCellReuseIdentifier = "movieCellReuseIdentifier"

class TopMoviesViewController: UITableViewController {
    
    // MARK: - PROPERTIES
    
    var viewModel: TopMoviesViewModel!
    
    // MARK: - LIFECYCLE
    
    init(viewModel: TopMoviesViewModel!) {
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
        self.navigationItem.title = "Top Movies"
        self.view.backgroundColor = .white
        configureTableView()
    }
    
    private func configureTableView() {
        print("DEBUG: Configure TableView..")
        
        tableView.register(MovieCell.self, forCellReuseIdentifier: movieCellReuseIdentifier)
        tableView.rowHeight = 80
        tableView.separatorStyle = .singleLine
        
    }
    
}

// MARK: - TABLEVIEW DataSource

extension TopMoviesViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //TODO: Retrieve this from the viewmodel
        return 5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: movieCellReuseIdentifier, for: indexPath)
        return cell
    }
}
