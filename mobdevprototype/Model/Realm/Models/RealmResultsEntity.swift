//
//  RealmResultsEntity.swift
//  mobdevprototype
//
//  Created by Dré on 28/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import RealmSwift

class RealmResultsEntity: Object, ResultsEntity {
    
    convenience required public init(copy obj: ResultsEntity) {
        self.init()
        
        results_id = obj.results_id
        if let data = obj.data {
            _data = RealmDataEntity(copy: data)
        }
        id = obj.id
        _images.append(contentsOf: obj.images.map {
            RealmUrlEntity.init(copy: $0)
        })
    }
    
    dynamic var results_id = 1
    private var _data = RealmDataEntity()
    var data: DataEntity? {
        return _data
    }
    dynamic var id = ""
    var images: [UrlEntity] {
        return Array(_images)
    }
    
    private var _images = List<RealmUrlEntity>()
    
    override class func primaryKey() -> String? {
        return "results_id"
    }
    
}
