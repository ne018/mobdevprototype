//
//  ApiDetailsEntity.swift
//  mobdevprototype
//
//  Created by Dré on 26/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import Foundation
import ObjectMapper

class ApiDetailsEntity: NSObject, Mappable, DetailsEntity{
    
    override init(){
        super.init()
    }
    
    required public init?(map: Map) {
        super.init()
    }
    
    var id = 1
    var name = ""
    var label = ""
    var label_en = ""
    var value = ""
    
    func mapping(map: Map){
        name <- map["name"]
        label <- map["label"]
        label_en <- map["label_en"]
        value <- map["value"]
    }
}
