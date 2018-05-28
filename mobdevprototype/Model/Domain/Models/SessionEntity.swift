//
//  SessionEntity.swift
//  mobdevprototype
//
//  Created by Dré on 25/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import Foundation

protocol SessionEntity: class {
    var session_id: Int { get }
    var id: String { get }
    var expire: String { get }
    var YII_CSRF_TOKEN: String { get }
}
