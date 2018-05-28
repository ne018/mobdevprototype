//
//  RealmAttributesEntity.swift
//  mobdevprototype
//
//  Created by Dré on 28/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import RealmSwift

class RealmAttributesEntity: Object, AttributesEntity {
    
    convenience required public init(copy obj: AttributesEntity) {
        self.init()
        
        id = obj.id
        desc = obj.desc
        year_built = obj.year_built
        engine = obj.engine
        price_conditions = obj.price_conditions
        price_conditions_id = obj.price_conditions_id
        color_family = obj.color_family
        seats = obj.seats
        doors = obj.doors
        drive_type = obj.drive_type
        warranty_type = obj.warranty_type
        warranty_years = obj.warranty_years
        warranty_kms = obj.warranty_kms
        
        if let all = obj.all {
            _all = RealmAllEntity(copy: all)
        }
        
    }
    
    dynamic var id = 1
    dynamic var desc = ""
    dynamic var year_built = ""
    dynamic var engine = ""
    dynamic var price_conditions = ""
    dynamic var price_conditions_id = ""
    dynamic var color_family = ""
    dynamic var seats = ""
    dynamic var doors = ""
    dynamic var drive_type = ""
    dynamic var warranty_type = ""
    dynamic var warranty_years = ""
    dynamic var warranty_kms = ""
    
    private var _all = RealmAllEntity()
    var all: AllEntity? {
        return _all
    }
    
    override class func primaryKey() -> String? {
        return "id"
    }
}
