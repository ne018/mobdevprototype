//
//  ApiOptionalEntity.swift
//  mobdevprototype
//
//  Created by Dré on 26/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import Foundation
import ObjectMapper

class ApiOptionalEntity: NSObject, Mappable, OptionalEntity{
    
    override init(){
        super.init()
    }
    
    required public init?(map: Map) {
        super.init()
    }
    
    var name = ""
    var label = ""
    var label_en = ""
    
    private var _options = [String]()
    var options: [String] {
        return _options
    }
    
    func mapping(map: Map){
        name <- map["name"]
        label <- map["label"]
        label_en <- map["label_en"]
        _options <- map["options"]
    }
}
