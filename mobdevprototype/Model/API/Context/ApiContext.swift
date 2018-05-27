//
//  ApiContext.swift
//  mobdevprototype
//
//  Created by Dré on 26/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import Foundation

protocol ApiContext: class {
    
    var environment: ApiEnvironment { get set }
}
