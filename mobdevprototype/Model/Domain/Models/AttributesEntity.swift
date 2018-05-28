//
//  AttributesEntity.swift
//  mobdevprototype
//
//  Created by Dré on 25/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import Foundation

protocol AttributesEntity: class {
    var id: Int { get }
    var desc: String { get }
    var year_built: String { get }
    var engine: String { get }
    var price_conditions: String { get }
    var price_conditions_id: String { get }
    var color_family: String { get }
    var seats: String { get }
    var doors: String { get }
    var drive_type: String { get }
    var warranty_type: String { get }
    var warranty_years: String { get }
    var warranty_kms: String { get }
    var all: AllEntity? { get }
}
