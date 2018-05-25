//
//  DetailsEntity.swift
//  mobdevprototype
//
//  Created by Dré on 25/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import Foundation

protocol DetailsEntity: class {
    var name: String { get }
    var label: String { get }
    var label_en: String { get }
    var value: String { get }
}
