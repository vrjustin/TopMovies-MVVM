//
//  MovieCell.swift
//  TopMovies
//
//  Created by Justin Maronde on 10/24/22.
//

import Foundation
import UIKit

class MovieCell: UITableViewCell {
    
    lazy var movieImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.layer.cornerRadius = 6
        iv.isUserInteractionEnabled = false
        iv.image = UIImage(imageLiteralResourceName: "placeholder") //TODO: Remove after vm set.
        return iv
    }()
    
    var movieTitleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    var yearTitleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.font = UIFont.systemFont(ofSize: 18)
        return label
    }()
    
    // MARK: - LIFECYCLE
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(movieImageView)
        movieImageView.anchor(top: topAnchor, left: safeAreaLayoutGuide.leftAnchor, paddingTop: 12, paddingLeft: -24)
        movieImageView.setDimensions(height: 113, width: 170)
        
        addSubview(movieTitleLabel)
        movieTitleLabel.anchor(top: movieImageView.topAnchor, left: movieImageView.rightAnchor, right: rightAnchor, paddingLeft: -24)
        
        addSubview(yearTitleLabel)
        yearTitleLabel.anchor(top: movieTitleLabel.bottomAnchor, left: movieImageView.rightAnchor, right: rightAnchor, paddingTop: 8, paddingLeft: -24)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
