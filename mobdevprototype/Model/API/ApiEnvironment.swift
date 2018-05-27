//
//  ApiEnvironment.swift
//  mobdevprototype
//
//  Created by Dré on 26/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import Foundation

enum ApiEnvironment: String { case
    
    production = "https://www.carmudi.co.id/api/"
    
    var url: String {
        return rawValue
    }
}
