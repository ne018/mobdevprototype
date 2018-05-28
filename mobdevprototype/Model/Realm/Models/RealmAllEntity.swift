//
//  RealmAllEntity.swift
//  mobdevprototype
//
//  Created by Dré on 28/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import RealmSwift

class RealmAllEntity: Object, AllEntity {
    
    convenience required public init(copy obj: AllEntity) {
        self.init()
        id = obj.id
        _details.append(contentsOf: obj.details.map {
            RealmDetailsEntity.init(copy: $0)
        })
        _optional.append(contentsOf: obj.optional.map {
            RealmOptionalEntity.init(copy: $0)
        })
    }
    
    dynamic var id = 1
    var details: [DetailsEntity] {
        return Array(_details)
    }
    var optional: [OptionalEntity] {
        return Array(_optional)
    }
    
    private var _details = List<RealmDetailsEntity>()
    private var _optional = List<RealmOptionalEntity>()
    
    override class func primaryKey() -> String? {
        return "id"
    }
    
}
