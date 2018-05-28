//
//  RealmUrlEntity.swift
//  mobdevprototype
//
//  Created by Dré on 28/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import RealmSwift

class RealmUrlEntity: Object, UrlEntity {
    
    convenience required public init(copy obj: UrlEntity) {
        self.init()
        id = obj.id
        url = obj.url
    }
    
    dynamic var id = 1
    dynamic var url = ""
    
    override class func primaryKey() -> String? {
        return "id"
    }
}
