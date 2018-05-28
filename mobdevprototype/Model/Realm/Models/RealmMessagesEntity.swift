//
//  RealmMessagesEntity.swift
//  mobdevprototype
//
//  Created by Dré on 28/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import RealmSwift

class RealmMessagesEntity: Object, MessagesEntity {
    
    convenience required public init(copy obj: MessagesEntity) {
        self.init()
        id = obj.id
        _success.append(contentsOf: obj.success)
    }
    
    dynamic var id = 1
    var success: [String] {
        return Array(_success)
    }
    
    private var _success = List<String>()
    
    override class func primaryKey() -> String? {
        return "id"
    }
    
}
