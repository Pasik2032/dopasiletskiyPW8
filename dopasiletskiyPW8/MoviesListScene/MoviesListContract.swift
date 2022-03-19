//
//  MoviesListContract.swift
//  dopasiletskiyPW8
//
//  Created by Даниил Пасилецкий on 19.03.2022.
//  
//

import Foundation


// MARK: View Output (Presenter -> View)
protocol PresenterToViewMoviesListProtocol {

}


// MARK: View Input (View -> Presenter)
protocol ViewToPresenterMoviesListProtocol {
    
    var view: PresenterToViewMoviesListProtocol? { get set }
    var interactor: PresenterToInteractorMoviesListProtocol? { get set }
    var router: PresenterToRouterMoviesListProtocol? { get set }
}


// MARK: Interactor Input (Presenter -> Interactor)
protocol PresenterToInteractorMoviesListProtocol {
    
    var presenter: InteractorToPresenterMoviesListProtocol? { get set }
}


// MARK: Interactor Output (Interactor -> Presenter)
protocol InteractorToPresenterMoviesListProtocol {
    
}


// MARK: Router Input (Presenter -> Router)
protocol PresenterToRouterMoviesListProtocol {
    
}
