//
//  CarListServices.swift
//  mobdevprototype
//
//  Created by Dré on 25/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import Foundation

typealias ListCarsResult = (_ carmainresp: ListCarsResponse?, _ error: Error?) -> ()
//typealias MainResults = (_ carmainresp: DataEntity?, _ error: Error?) -> ()

protocol CarListService: class {
    
    func getAllCarList(page: Int, maxitems: Int, sort: String, completion: @escaping ListCarsResult)
}
