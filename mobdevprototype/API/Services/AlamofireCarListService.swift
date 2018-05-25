//
//  AlamofireCarListService.swift
//  mobdevprototype
//
//  Created by Dré on 26/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import Alamofire
import AlamofireObjectMapper

class AlamofireCarListService: AlamofireService, CarListService {
    
    func getAllCarList(page: Int, maxitems: Int, completion: @escaping ListCarsResult) {
        get(at: .allCarList(page: page, maxitems: maxitems)).responseObject {
            (res: DataResponse<ApiListCarsResponse>) in
            completion(res.result.value, res.result.error)
        }
    }
    
    func getOldestCarList(page: Int, maxitems: Int, completion: @escaping ListCarsResult) {
        get(at: .oldestCarList(page: page, maxitems: maxitems)).responseObject {
            (res: DataResponse<ApiListCarsResponse>) in
            completion(res.result.value, res.result.error)
        }
    }
    
    func getNewestCarList(page: Int, maxitems: Int, completion: @escaping ListCarsResult) {
        get(at: .newestCarList(page: page, maxitems: maxitems)).responseObject {
            (res: DataResponse<ApiListCarsResponse>) in
            completion(res.result.value, res.result.error)
        }
    }
    
    func getCheapestCarList(page: Int, maxitems: Int, completion: @escaping ListCarsResult) {
        get(at: .cheapestCarList(page: page, maxitems: maxitems)).responseObject {
            (res: DataResponse<ApiListCarsResponse>) in
            completion(res.result.value, res.result.error)
        }
    }
    
    func getExpensiveCarList(page: Int, maxitems: Int, completion: @escaping ListCarsResult) {
        get(at: .cheapestCarList(page: page, maxitems: maxitems)).responseObject {
            (res: DataResponse<ApiListCarsResponse>) in
            completion(res.result.value, res.result.error)
        }
    }
    
    func getLowMileageCarList(page: Int, maxitems: Int, completion: @escaping ListCarsResult) {
        get(at: .lowMileageCarList(page: page, maxitems: maxitems)).responseObject {
            (res: DataResponse<ApiListCarsResponse>) in
            completion(res.result.value, res.result.error)
        }
    }
    
    func getHighMileageCarList(page: Int, maxitems: Int, completion: @escaping ListCarsResult) {
        get(at: .highMileageCarList(page: page, maxitems: maxitems)).responseObject {
            (res: DataResponse<ApiListCarsResponse>) in
            completion(res.result.value, res.result.error)
        }
    }
    
}
