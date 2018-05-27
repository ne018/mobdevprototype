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
    
    func getAllCarList(page: Int, maxitems: Int, sort: String, completion: @escaping ListCarsResult) {
        get(at: .allCarList(page: page, maxitems: maxitems, sort: sort)).responseObject {
            (res: DataResponse<ApiListCarsResponse>) in
            completion(res.result.value, res.result.error)
        }
    }
    
}
