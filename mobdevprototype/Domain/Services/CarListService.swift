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
    
    func getAllCarList(page: Int, maxitems: Int, completion: @escaping ListCarsResult)
    func getOldestCarList(page: Int, maxitems: Int, completion: @escaping ListCarsResult)
    func getNewestCarList(page: Int, maxitems: Int, completion: @escaping ListCarsResult)
    func getCheapestCarList(page: Int, maxitems: Int, completion: @escaping ListCarsResult)
    func getExpensiveCarList(page: Int, maxitems: Int, completion: @escaping ListCarsResult)
    func getLowMileageCarList(page: Int, maxitems: Int, completion: @escaping ListCarsResult)
    func getHighMileageCarList(page: Int, maxitems: Int, completion: @escaping ListCarsResult)
}
