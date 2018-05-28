//
//  MessagesEntity.swift
//  mobdevprototype
//
//  Created by Dré on 25/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import Foundation

protocol MessagesEntity: class {
    var id: Int { get }
    var success: [String] { get }
}
