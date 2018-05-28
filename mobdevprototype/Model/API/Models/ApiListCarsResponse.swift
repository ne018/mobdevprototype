//
//  ApiListCarsResponse.swift
//  mobdevprototype
//
//  Created by Dré on 26/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import Foundation
import ObjectMapper

class ApiListCarsResponse: NSObject, Mappable, ListCarsResponse {
    
    // Initialization
    override init() {
        super.init()
    }
    
    required public init?(map: Map){
        super.init()
    }
    
    // Properties
    var id = 1
    var success = false
    var _messages: ApiMessagesEntity?
    var messages: MessagesEntity? {
        return _messages
    }
    var _session: ApiSessionEntity?
    var session: SessionEntity? {
        return _session
    }
    var _metadata: ApiMetadataEntity?
    var metadata: MetadataEntity? {
        return _metadata
    }
    
    
    // Mappable
    func mapping(map: Map) {
        success <- map["success"]
        _messages <- map["messages"]
        _session <- map["session"]
        _metadata <- map["metadata"]
    }
}
