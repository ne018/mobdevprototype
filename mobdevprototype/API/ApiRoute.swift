//
//  ApiRoute.swift
//  mobdevprototype
//
//  Created by Dré on 26/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

enum ApiRoute { case
    
    allCarList(page: Int, maxitems: Int),
    oldestCarList(page: Int, maxitems: Int),
    newestCarList(page: Int, maxitems: Int),
    cheapestCarList(page: Int, maxitems: Int),
    expensiveCarList(page: Int, maxitems: Int),
    lowMileageCarList(page: Int, maxitems: Int),
    highMileageCarList(page: Int, maxitems: Int)
    
    var path: String {
        switch self {
        case .allCarList(let page, let maxitems): return "cars/page:\(page)/maxitems:\(maxitems)"
        case .oldestCarList(let page, let maxitems): return "cars/page:\(page)/maxitems:\(maxitems)/sort:oldest"
        case .newestCarList(let page, let maxitems): return "cars/page:\(page)/maxitems:\(maxitems)/sort:newest"
        case .cheapestCarList(let page, let maxitems): return "cars/page:\(page)/maxitems:\(maxitems)/sort:price-low"
        case .expensiveCarList(let page, let maxitems): return "cars/page:\(page)/maxitems:\(maxitems)/sort:price-high"
        case .lowMileageCarList(let page, let maxitems): return "cars/page:\(page)/maxitems:\(maxitems)/sort:mileage-low"
        case .highMileageCarList(let page, let maxitems): return "cars/page:\(page)/maxitems:\(maxitems)/sort:mileage-high"
        }
    }
    
    func url(for environment: ApiEnvironment) -> String {
        return "\(environment.url)/\(path)"
    }
    
    
}
