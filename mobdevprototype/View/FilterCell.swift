//
//  FilterCell.swift
//  mobdevprototype
//
//  Created by Dré on 27/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import UIKit

class FilterCell: BaseCell {
    
    override var isHighlighted: Bool {
        didSet {
            print(isHighlighted)
//            backgroundColor = self.isHighlighted ? UIColor.darkGray : UIColor.white
//            nameLabel.textColor = self.isHighlighted ? UIColor.white : UIColor.black
        }
    }
    
    var filter: Filter? {
        didSet {
            nameLabel.text = filter?.name
        }
    }
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Newest"
        label.font = UIFont.systemFont(ofSize: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func setupViews(){
        super.setupViews()

        addSubview(nameLabel)
//        backgroundColor = UIColor.blue
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[nameLabel]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["nameLabel": nameLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[nameLabel]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["nameLabel": nameLabel]))
    }
}
