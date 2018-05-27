//
//  OptionalEntity.swift
//  mobdevprototype
//
//  Created by Dré on 25/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import Foundation

protocol OptionalEntity: class {
    var name: String { get }
    var label: String { get }
    var label_en: String { get }
    var options: [String] { get }
}
