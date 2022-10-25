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
        configureTableView()
        viewModel.fetchMovies {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    // MARK: - HELPERS
    
    private func setupUI() {
        self.navigationItem.title = "Top Movies"
        self.view.backgroundColor = .white
    }
    
    private func configureTableView() {
        tableView.register(MovieCell.self, forCellReuseIdentifier: movieCellReuseIdentifier)
        tableView.rowHeight = 160
        tableView.separatorStyle = .singleLine
    }
    
}

// MARK: - TABLEVIEW DataSource

extension TopMoviesViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfItemsInSection(section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: movieCellReuseIdentifier, for: indexPath) as! MovieCell
        
        cell.movieTitleLabel.text = viewModel.titleForItemAtIndexPath(indexPath.row)
        cell.yearTitleLabel.text = viewModel.releaseYearForItemAtIndex(indexPath.row)
        
        return cell
    }
}
