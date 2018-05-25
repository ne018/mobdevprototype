//
//  ApiUrlEntity.swift
//  mobdevprototype
//
//  Created by Dré on 26/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import Foundation
import ObjectMapper

class ApiUrlEntity: NSObject, Mappable, UrlEntity{
    
    override init(){
        super.init()
    }
    
    required public init?(map: Map) {
        super.init()
    }
    
    var url = ""
    
    func mapping(map: Map){
        url <- map["url"]
    }
}
