//
//  mobdevprototypeTests.swift
//  mobdevprototypeTests
//
//  Created by Dré on 23/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import XCTest
@testable import mobdevprototype

class mobdevprototypeTests: XCTestCase {
    
    var carListController : CarListController!
    
    override func setUp() {
        super.setUp()
        
        carListController = CarListController(collectionViewLayout: UICollectionViewFlowLayout())
        let navigationController = UINavigationController.init(rootViewController: carListController)
        XCTAssertNotNil(carListController.view)
    }
    

}
