//
//  ResultsEntity.swift
//  mobdevprototype
//
//  Created by Dré on 25/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import Foundation

protocol ResultsEntity: class {
    var results_id: Int { get }
    var data: DataEntity? { get }
    var id: String { get }
    var images: [UrlEntity] { get }
}
