//
//  MovieCell.swift
//  TopMovies
//
//  Created by Justin Maronde on 10/24/22.
//

import Foundation
import UIKit

class MovieCell: UITableViewCell {
    
    var movieTitleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    // MARK: - LIFECYCLE
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(movieTitleLabel)
        movieTitleLabel.anchor(left: safeAreaLayoutGuide.leftAnchor, paddingLeft: 8)
        movieTitleLabel.centerY(inView: self.contentView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
