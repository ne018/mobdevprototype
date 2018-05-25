//
//  ApiResultsEntity.swift
//  mobdevprototype
//
//  Created by Dré on 26/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import Foundation
import ObjectMapper

class ApiResultsEntity: NSObject, Mappable, ResultsEntity {
    
    private var _data: ApiDataEntity?
    var data: DataEntity? {
        return _data
    }
    var id = ""
    private var _images = [ApiUrlEntity]()
    var images: [UrlEntity] {
        return _images
    }
    
    override init(){
        super.init()
    }
    
    required public init?(map: Map) {
        super.init()
    }
    
    func mapping(map: Map){
        _data <- map["data"]
        id <- map["id"]
        _images <- map["images"]
        
    }
}
