//
//  MoviesListPresenter.swift
//  dopasiletskiyPW8
//
//  Created by Даниил Пасилецкий on 19.03.2022.
//  
//

import Foundation

class MoviesListPresenter: ViewToPresenterMoviesListProtocol {
    func startApp() {
        interactor?.loadMovies()
    }
    

    // MARK: Properties
    var view: PresenterToViewMoviesListProtocol?
    var interactor: PresenterToInteractorMoviesListProtocol?
    var router: PresenterToRouterMoviesListProtocol?
}

extension MoviesListPresenter: InteractorToPresenterMoviesListProtocol {
    
}
