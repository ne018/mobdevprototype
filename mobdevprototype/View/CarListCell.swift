//
//  CarListCell.swift
//  mobdevprototype
//
//  Created by Dré on 25/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import UIKit

class BaseCell: UICollectionViewCell {
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        setupViews()
    }
    
    func setupViews(){
        // ready to override
    }
    
}

class CarListCell: BaseCell {
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        let attributedText = NSMutableAttributedString(string: "Honda Civic 2013", attributes: [NSFontAttributeName: UIFont.boldSystemFont(ofSize: 14)])
        label.attributedText = attributedText
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let carInfoLabel: UILabel = {
        let label = UILabel()
        label.text = "Automatic • Gasoline • 38,000 km"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = UIColor.darkGray
//        let attributedText = NSMutableAttributedString(string: "Automatic • Gasoline • 38,000 km", attributes: [NSForegroundColorAttributeName: UIColor.darkGray, NSFontAttributeName: UIFont.systemFont(ofSize: 12)])
//        label.attributedText = attributedText
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let gradientView: GradientView = {
        let view = GradientView()
        view.addGradient(startColor: UIColor.black, endColor: UIColor.clear)
        view.backgroundColor = UIColor.clear
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isUserInteractionEnabled = true
        return view
    }()
    
    let previewImage: CachedImageView = {
        let imageView = CachedImageView()
        imageView.image = UIImage(named: "carpic1")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let mailBtn: UIButton = {
        let button = UIButton.init(type: .system)
        let image = UIImage(named: "mail-Icon-App-20x20") as! UIImage
        button.setImage(image, for: .normal)
        button.tintColor = UIColor.black
        button.backgroundColor = UIColor.white
        button.layer.borderColor = UIColor.lightGray.cgColor
        button.layer.borderWidth = 0.5
        //        button.layer.cornerRadius = 2
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let callBtn: UIButton = {
        let button = UIButton.init(type: .system)
        let image = UIImage(named: "call-Icon-App-20x20") as! UIImage
        button.setImage(image, for: .normal)
        button.tintColor = UIColor.white
        button.backgroundColor = UIColor.green
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 0.5
        button.layer.cornerRadius = 2
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let priceImage: CachedImageView = {
        let imageView = CachedImageView()
        imageView.image = UIImage(named: "price-icon")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let priceLabel: UILabel = {
        let label = UILabel()
        label.text = "550,000"
        label.font = UIFont.boldSystemFont(ofSize: 19)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let locImage: CachedImageView = {
        let imageView = CachedImageView()
        imageView.image = UIImage(named: "loc-Icon-App-20x20")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.tintColor = UIColor.gray
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let locLabel: UILabel = {
        let label = UILabel()
        label.text = "Pasig"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = UIColor.gray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func setupViews(){
        backgroundColor = UIColor.white
        
        contentView.addSubview(previewImage)
        contentView.addSubview(nameLabel)
        contentView.addSubview(carInfoLabel)
        contentView.addSubview(mailBtn)
        contentView.addSubview(callBtn)
        contentView.addSubview(priceImage)
        contentView.addSubview(priceLabel)
        contentView.addSubview(locImage)
        contentView.addSubview(locLabel)
        contentView.addSubview(gradientView)
        
        previewImage.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        previewImage.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        previewImage.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        previewImage.heightAnchor.constraint(equalToConstant: 140).isActive = true
        
        gradientView.leftAnchor.constraint(equalTo: previewImage.leftAnchor).isActive = true
        gradientView.bottomAnchor.constraint(equalTo: previewImage.bottomAnchor).isActive = true
        gradientView.rightAnchor.constraint(equalTo: previewImage.rightAnchor).isActive = true
        gradientView.heightAnchor.constraint(equalToConstant: 90).isActive = true
        
        nameLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 5).isActive = true
        nameLabel.topAnchor.constraint(equalTo: previewImage.bottomAnchor, constant: 8).isActive = true
        nameLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 5).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 20).isActive = false
        
        carInfoLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 5).isActive = true
        carInfoLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5).isActive = true
        carInfoLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 5).isActive = true
        carInfoLabel.heightAnchor.constraint(equalToConstant: 20).isActive = false
        
        priceImage.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 5).isActive = true
        priceImage.topAnchor.constraint(equalTo: carInfoLabel.bottomAnchor, constant: 5).isActive = true
        priceImage.widthAnchor.constraint(equalToConstant: 20).isActive = true
        priceImage.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        locLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10).isActive = true
        locLabel.topAnchor.constraint(equalTo: carInfoLabel.bottomAnchor, constant: 10).isActive = true
        
        locImage.rightAnchor.constraint(equalTo: locLabel.leftAnchor, constant: 0).isActive = true
        locImage.topAnchor.constraint(equalTo: carInfoLabel.bottomAnchor, constant: 10).isActive = true
        locImage.widthAnchor.constraint(equalToConstant: 15).isActive = true
        locImage.heightAnchor.constraint(equalToConstant: 15).isActive = true
        
        priceLabel.leftAnchor.constraint(equalTo: priceImage.rightAnchor, constant: 5).isActive = true
        priceLabel.topAnchor.constraint(equalTo: carInfoLabel.bottomAnchor, constant: 5).isActive = true
        
        mailBtn.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        mailBtn.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: 10).isActive = true
        mailBtn.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 1/2).isActive = true
        mailBtn.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        callBtn.leftAnchor.constraint(equalTo: mailBtn.rightAnchor).isActive = true
        callBtn.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: 10).isActive = true
        callBtn.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 1/2).isActive = true
        callBtn.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
    }
    
}
