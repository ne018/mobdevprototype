//
//  ApiSessionEntity.swift
//  mobdevprototype
//
//  Created by Dré on 26/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import Foundation
import ObjectMapper

class ApiSessionEntity: NSObject, Mappable, SessionEntity {
    
    var session_id = 1
    var id = ""
    var expire = ""
    var YII_CSRF_TOKEN = ""
    
    override init(){
        super.init()
    }
    
    required public init?(map: Map) {
        super.init()
    }
    
    func mapping(map: Map){
        id <- map["id"]
        expire <- map["expire"]
        YII_CSRF_TOKEN <- map["YII_CSRF_TOKEN"]
    }
}

