//
//  ApiAllEntity.swift
//  mobdevprototype
//
//  Created by Dré on 26/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import Foundation
import ObjectMapper

class ApiAllEntity: NSObject, Mappable, AllEntity {
    
    private var _details = [ApiDetailsEntity]()
    private var _optional = [ApiOptionalEntity]()
    var details: [DetailsEntity] {
        return _details
    }
    var optional: [OptionalEntity] {
        return _optional
    }
    
    override init(){
        super.init()
    }
    
    required public init?(map: Map) {
        super.init()
    }
    
    func mapping(map: Map){
        _details <- map["details"]
        _optional <- map["optional"]
        
    }
}
