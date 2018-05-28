//
//  RealmOptionalEntity.swift
//  mobdevprototype
//
//  Created by Dré on 28/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import RealmSwift

class RealmOptionalEntity: Object, OptionalEntity {
    
    convenience required public init(copy obj: OptionalEntity) {
        self.init()
        id = obj.id
        name = obj.name
        label = obj.label
        label_en = obj.label_en
        _options.append(contentsOf: obj.options)
    }
    
    dynamic var id = 1
    dynamic var name = ""
    dynamic var label = ""
    dynamic var label_en = ""
    var options: [String] {
        return Array(_options)
    }
    
    private var _options = List<String>()
    
    override class func primaryKey() -> String? {
        return "id"
    }
    
}
