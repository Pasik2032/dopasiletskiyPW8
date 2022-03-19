//
//  MovieView.swift
//  dopasiletskiyPW8
//
//  Created by Даниил Пасилецкий on 19.03.2022.
//

import UIKit

class MovieView: UITableViewCell {
    static let idInteficator = "MovieCell"
    private let poster = UIImageView()
    private let title = UILabel()
    init() {
        super.init(style: .default, reuseIdentifier: Self.idInteficator)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureUI(){
        poster.translatesAutoresizingMaskIntoConstraints = false
        title.translatesAutoresizingMaskIntoConstraints = false
        addSubview(poster)
        addSubview(title)
        
        NSLayoutConstraint.activate([
            poster.topAnchor.constraint(equalTo: topAnchor),
            poster.trailingAnchor.constraint(equalTo: trailingAnchor),
            poster.leadingAnchor.constraint(equalTo: leadingAnchor),
            poster.heightAnchor.constraint(equalToConstant: 200),
            
            title.topAnchor.constraint(equalTo: poster.bottomAnchor, constant: 10),
            title.trailingAnchor.constraint(equalTo: trailingAnchor),
            title.leadingAnchor.constraint(equalTo: leadingAnchor),
            title.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        title.textAlignment = .center
    }
    
}
