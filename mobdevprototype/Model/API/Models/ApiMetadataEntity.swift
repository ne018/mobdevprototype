//
//  ApiMetadataEntity.swift
//  mobdevprototype
//
//  Created by Dré on 26/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import Foundation
import ObjectMapper

class ApiMetadataEntity: NSObject, Mappable, MetadataEntity {
    
    var id = 1
    var product_count = ""
    private var _results = [ApiResultsEntity]()
    var results: [ResultsEntity] {
        return _results
    }
    
    override init(){
        super.init()
    }
    
    required public init?(map: Map) {
        super.init()
    }
    
    func mapping(map: Map){
        product_count <- map["product_count"]
        _results <- map["results"]
        
    }
}

