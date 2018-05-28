//
//  RealmCarListService.swift
//  mobdevprototype
//
//  Created by Dré on 28/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import RealmSwift

class RealmCarListService: CarListService {
    
    init(baseService: CarListService){
        self.baseService = baseService
    }
    
    fileprivate let baseService: CarListService
    fileprivate var realm: Realm { return try! Realm() }
    
    
    func getAllCarList(page: Int, maxitems: Int, sort: String, completion: @escaping ListCarsResult) {
        getAllCarListFromDb(page: page, maxitems: maxitems, sort: sort, completion: completion)
        getAllCarListFromService(page: page, maxitems: maxitems, sort: sort, completion: completion)
    }
    
    fileprivate func getAllCarListFromDb(page: Int, maxitems: Int, sort: String, completion: @escaping ListCarsResult){
        let obj = realm.object(ofType: RealmListCarsResponse.self, forPrimaryKey: 1)
        completion(obj, nil)
    }
    
    fileprivate func getAllCarListFromService(page: Int, maxitems: Int, sort: String, completion: @escaping ListCarsResult){
        baseService.getAllCarList(page: page, maxitems: maxitems, sort: sort) { (carmainresp, error) in
            self.persist(carmainresp)
            completion(carmainresp, error)
        }
    }
    
    fileprivate func persist(_ listcarsresponse: ListCarsResponse?){
        guard let listcarsresponse = listcarsresponse else { return }
        self.persists(listcarsresponse)
        self.persists(listcarsresponse.metadata)
        self.persists((listcarsresponse.metadata?.results)!)
    }
    
    fileprivate func persists(_ listcarsresponse: ListCarsResponse?){
        let objs = listcarsresponse.map { RealmListCarsResponse(copy: $0) }
        try! realm.write {
            realm.add(objs!, update: true)
        }
    }

    fileprivate func persists(_ metadataentity: MetadataEntity?){
        let objs = metadataentity.map { RealmMetadataEntity(copy: $0) }
        try! realm.write {
            realm.add(objs!, update: true)
        }
    }

    fileprivate func persists(_ resultsentity: [ResultsEntity]){
        let objs = resultsentity.map { RealmResultsEntity(copy: $0) }
        try! realm.write {
            realm.add(objs, update: true)
        }
    }
//
//    fileprivate func persists(_ dataentity: DataEntity?){
//        let objs = dataentity.map { RealmDataEntity(copy: $0) }
//        try! realm.write {
//            realm.add(objs!, update: true)
//        }
//    }
    
}
