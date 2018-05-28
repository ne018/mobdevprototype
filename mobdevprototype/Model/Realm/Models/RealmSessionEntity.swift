//
//  RealmSessionEntity.swift
//  mobdevprototype
//
//  Created by Dré on 28/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import RealmSwift

class RealmSessionEntity: Object, SessionEntity {
    
    convenience required public init(copy obj: SessionEntity) {
        self.init()
        
        session_id = obj.session_id
        id = obj.id
        expire = obj.expire
        YII_CSRF_TOKEN = obj.YII_CSRF_TOKEN
    }
    
    dynamic var session_id = 1
    dynamic var id = ""
    dynamic var expire = ""
    dynamic var YII_CSRF_TOKEN = ""
    
    override class func primaryKey() -> String? {
        return "session_id"
    }
}
