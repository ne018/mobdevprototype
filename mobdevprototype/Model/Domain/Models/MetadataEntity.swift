//
//  MetadataEntity.swift
//  mobdevprototype
//
//  Created by Dré on 25/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import Foundation

protocol MetadataEntity: class {
    var id: Int { get }
    var product_count: String { get }
    var results: [ResultsEntity] { get }
}
