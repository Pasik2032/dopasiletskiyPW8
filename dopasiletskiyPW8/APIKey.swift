//
//  APIKey.swift
//  dopasiletskiyPW8
//
//  Created by Даниил Пасилецкий on 19.03.2022.
//

import Foundation

class APIKey {
    
    private let apiKey: String = "13da4f0652686a834940b6f3bd582248"

    static var shared: APIKey = {
        let instance = APIKey()
        return instance
    }()
    
    private init() {}

    func getAPIKey() -> String {
        return apiKey
    }
}

extension APIKey: NSCopying {

    func copy(with zone: NSZone? = nil) -> Any {
        return self
    }
}
