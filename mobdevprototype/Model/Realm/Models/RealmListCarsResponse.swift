//
//  RealmListCarsResponse.swift
//  mobdevprototype
//
//  Created by Dré on 28/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import RealmSwift

class RealmListCarsResponse: Object, ListCarsResponse {
    
    convenience required public init(copy obj: ListCarsResponse) {
        self.init()
        
        id = obj.id
        success = obj.success
        if let messages = obj.messages {
            _messages = RealmMessagesEntity(copy: messages)
        }
        if let session = obj.session {
            _session = RealmSessionEntity(copy: session)
        }
        if let metadata = obj.metadata {
            _metadata = RealmMetadataEntity(copy: metadata)
        }
        
    }
    
    dynamic var id = 1
    dynamic var success = false
    private var _messages = RealmMessagesEntity()
    var messages: MessagesEntity? {
        return _messages
    }
    
    private var _session = RealmSessionEntity()
    var session: SessionEntity? {
        return _session
    }
    
    private var _metadata = RealmMetadataEntity()
    var metadata: MetadataEntity? {
        return _metadata
    }
    
    override class func primaryKey() -> String? {
        return "id"
    }
}
