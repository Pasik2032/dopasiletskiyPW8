//
//  MoviesListInteractor.swift
//  dopasiletskiyPW8
//
//  Created by Даниил Пасилецкий on 19.03.2022.
//  
//

import Foundation

class MoviesListInteractor: PresenterToInteractorMoviesListProtocol {
    
    // MARK: Properties
    var presenter: InteractorToPresenterMoviesListProtocol?
    
    let apiKey = APIKey.shared.getAPIKey()
    
    func loadMovies() {
        guard let url = URL(string: "https://api.themoviedb.org/3/discover/movie?api_key=\(apiKey)&language=ruRU") else { return assertionFailure("some problem with url")}
        let session = URLSession.shared.dataTask(with: URLRequest(url: url), completionHandler: {data, _, _ in
            
        })
        session.resume()
    }
}
