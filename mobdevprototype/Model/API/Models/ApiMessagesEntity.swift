//
//  ApiMessagesEntity.swift
//  mobdevprototype
//
//  Created by Dré on 26/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import Foundation
import ObjectMapper

class ApiMessagesEntity: NSObject, Mappable, MessagesEntity {
    
    private var _success = [String]()
    var success: [String] {
        return _success
    }
    
    override init(){
        super.init()
    }
    
    required public init?(map: Map) {
        super.init()
    }
    
    func mapping(map: Map){
        _success <- map["success"]
    }
}
