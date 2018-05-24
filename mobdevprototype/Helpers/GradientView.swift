//
//  GradientView.swift
//  mobdevprototype
//
//  Created by Dré on 25/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import UIKit

class GradientView: UIView {
    
    private let gradient : CAGradientLayer = CAGradientLayer()
    
    /**
     displays a gradient on the view
     */
    func addGradient(startColor: UIColor, endColor: UIColor) {
        
        self.gradient.frame     = self.bounds
        self.gradient.colors    = [startColor.cgColor, endColor.cgColor]
        gradient.startPoint     = CGPoint(x: 0.5, y: 1)
        gradient.endPoint       = CGPoint(x: 0.5, y: 0.5)
        //        self.layer.insertSublayer(self.gradient, at: 0)
        self.layer.addSublayer(self.gradient)
    }
    
    /**
     resizes the gradient with the view size
     */
    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        self.gradient.frame = self.bounds
    }
}
