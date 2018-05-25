//
//  ListCarsResponse.swift
//  mobdevprototype
//
//  Created by Dré on 25/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import Foundation

protocol ListCarsResponse: class {
    var success: Bool { get }
    var messages: MessagesEntity? { get }
    var session: SessionEntity? { get }
    var metadata: MetadataEntity? { get }
}
