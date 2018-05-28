//
//  RealmDetailsEntity.swift
//  mobdevprototype
//
//  Created by Dré on 28/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import RealmSwift

class RealmDetailsEntity: Object, DetailsEntity {
    
    convenience required public init(copy obj: DetailsEntity) {
        self.init()
        id = obj.id
        name = obj.name
        label = obj.label
        label_en = obj.label_en
        value = obj.value
    }
    
    dynamic var id = 1
    dynamic var name = ""
    dynamic var label = ""
    dynamic var label_en = ""
    dynamic var value = ""
    
    override class func primaryKey() -> String? {
        return "id"
    }
}
