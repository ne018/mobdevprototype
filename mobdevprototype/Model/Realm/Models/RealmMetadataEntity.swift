//
//  RealmMetadataEntity.swift
//  mobdevprototype
//
//  Created by Dré on 28/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import RealmSwift

class RealmMetadataEntity: Object, MetadataEntity {
    
    convenience required public init(copy obj: MetadataEntity) {
        self.init()
        id = obj.id
        product_count = obj.product_count
        
        _results.append(contentsOf: obj.results.map {
            RealmResultsEntity.init(copy: $0)
        })
    }
    
    dynamic var id = 1
    dynamic var product_count = ""
    var results: [ResultsEntity] {
        return Array(_results)
    }

    private var _results = List<RealmResultsEntity>()
    
    override class func primaryKey() -> String? {
        return "id"
    }
    
}
