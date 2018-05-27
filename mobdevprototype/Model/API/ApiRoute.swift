//
//  ApiRoute.swift
//  mobdevprototype
//
//  Created by Dré on 26/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

enum ApiRoute { case
    
    allCarList(page: Int, maxitems: Int, sort: String)
    
    var path: String {
        switch self {
            case .allCarList(let page, let maxitems, let sort): return "cars/page:\(page)/maxitems:\(maxitems)/\(sort)/"
        }
    }
    
    func url(for environment: ApiEnvironment) -> String {
        return "\(environment.url)/\(path)"
    }
    
    
}
