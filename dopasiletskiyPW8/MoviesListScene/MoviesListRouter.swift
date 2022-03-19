//
//  MoviesListRouter.swift
//  dopasiletskiyPW8
//
//  Created by Даниил Пасилецкий on 19.03.2022.
//  
//

import Foundation
import UIKit

class MoviesListRouter: PresenterToRouterMoviesListProtocol {
    
    // MARK: Static methods
    static func createModule() -> UIViewController {
        
        let viewController = MoviesListViewController()
        
        let presenter: ViewToPresenterMoviesListProtocol & InteractorToPresenterMoviesListProtocol = MoviesListPresenter()
        
        viewController.presenter = presenter
        viewController.presenter?.router = MoviesListRouter()
        viewController.presenter?.view = viewController
        viewController.presenter?.interactor = MoviesListInteractor()
        viewController.presenter?.interactor?.presenter = presenter
        
        return viewController
    }
    
}
