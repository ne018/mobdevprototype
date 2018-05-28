//
//  ApiAttributesEntity.swift
//  mobdevprototype
//
//  Created by Dré on 26/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import Foundation
import ObjectMapper

class ApiAttributesEntity: NSObject, Mappable, AttributesEntity {

    var id = 1
    var desc = ""
    var year_built = ""
    var engine = ""
    var price_conditions = ""
    var price_conditions_id = ""
    var color_family = ""
    var seats = ""
    var doors = ""
    var drive_type = ""
    var warranty_type = ""
    var warranty_years = ""
    var warranty_kms = ""
    
    private var _all: ApiAllEntity?
    var all: AllEntity? {
        return _all
    }
    
    override init(){
        super.init()
    }
    
    required public init?(map: Map) {
        super.init()
    }
    
    func mapping(map: Map){
        desc <- map["description"]
        year_built <- map["year_built"]
        engine <- map["engine"]
        price_conditions <- map["price_conditions"]
        price_conditions_id <- map["price_conditions_id"]
        color_family <- map["color_family"]
        seats <- map["seats"]
        doors <- map["doors"]
        drive_type <- map["drive_type"]
        warranty_type <- map["warranty_type"]
        warranty_years <- map["warranty_years"]
        warranty_kms <- map["warranty_kms"]
        _all <- map["all"]
        
    }
}
