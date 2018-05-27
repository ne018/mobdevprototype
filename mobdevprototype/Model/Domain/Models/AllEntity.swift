//
//  AllEntity.swift
//  mobdevprototype
//
//  Created by Dré on 25/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import Foundation

protocol AllEntity: class {
    var details: [DetailsEntity] { get }
    var optional: [OptionalEntity] { get }
}
