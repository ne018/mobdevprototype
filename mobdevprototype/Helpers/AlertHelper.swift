//
//  AlertHelper.swift
//  mobdevprototype
//
//  Created by Dré on 26/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import Foundation
import UIKit

class AlertHelper {
    func showAlert(fromController controller: UIViewController, title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.view.backgroundColor = UIColor.white
        alert.view.layer.cornerRadius = 15
        alert.addAction(OKAction)
        controller.present(alert, animated: true, completion: nil)
    }
}
