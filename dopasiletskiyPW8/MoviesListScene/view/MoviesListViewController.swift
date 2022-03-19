//
//  MoviesListViewController.swift
//  dopasiletskiyPW8
//
//  Created by Даниил Пасилецкий on 19.03.2022.
//  
//

import UIKit

class MoviesListViewController: UIViewController {
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        view.backgroundColor = .orange
        DispatchQueue.global(qos: .background).async { [weak self] in
            self?.presenter?.startApp()
        }
         
    }

    // MARK: - Properties
    var presenter: ViewToPresenterMoviesListProtocol?
    private let tableView = UITableView()
    
    // MARK: - Config view
    private func configureUI(){
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.register(MovieView.self, forCellReuseIdentifier: MovieView.idInteficator)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        tableView.reloadData()
    }
}

// MARK: - Presenter To View
extension MoviesListViewController: PresenterToViewMoviesListProtocol{
    // TODO: Implement View Output Methods
}

// MARK: - data source

extension MoviesListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return MovieView()
    }
}
