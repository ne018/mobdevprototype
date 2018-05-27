//
//  FilterLauncher.swift
//  mobdevprototype
//
//  Created by Dré on 27/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import UIKit

class Filter: NSObject {
    let name: String
    
    init(name: String){
        self.name = name
    }
}

class FilterLauncher: NSObject, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var carListController: CarListController?
    let cellID = "cellID"
    let cellHeight: CGFloat = 50
    let filters: [Filter] = {
        return [Filter(name: "Newest"), Filter(name: "Oldest"), Filter(name: "Cheapest"), Filter(name: "Most Expensive"), Filter(name: "High Mileage"), Filter(name: "Low Mileage"), Filter(name: "Cancel ")]
    }()
    
    let blackView = UIView()
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = UIColor.white
        return cv
    }()
    
    func showFilter(){
        
        if let window = UIApplication.shared.keyWindow {
            blackView.backgroundColor = UIColor(white: 0, alpha: 0.5)
            blackView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleDismiss)))
            
            window.addSubview(blackView)
            window.addSubview(collectionView)
            
            let height: CGFloat = CGFloat(filters.count) * cellHeight
            let y = window.frame.height - height
            collectionView.frame = CGRect(x: 0, y: window.frame.height, width: window.frame.width, height: height)
            
            blackView.frame = window.frame
            blackView.alpha = 0
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                self.blackView.alpha = 1
                self.collectionView.frame = CGRect(x: 0, y: y, width: self.collectionView.frame.width, height: self.collectionView.frame.height)
            }, completion: nil)
        }
    }
    
    func handleDismiss(){
        UIView.animate(withDuration: 0.5, animations: {
            self.blackView.alpha = 0
            if let window = UIApplication.shared.keyWindow {
                self.collectionView.frame = CGRect(x: 0, y: window.frame.height, width: self.collectionView.frame.width, height: self.collectionView.frame.height)
            }
        })
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filters.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! FilterCell
        
        let filter = self.filters[indexPath.row]
        cell.filter = filter
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: cellHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let filter = filters[indexPath.row]
        print(filter.name)
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.blackView.alpha = 0
            if let window = UIApplication.shared.keyWindow {
                self.collectionView.frame = CGRect(x: 0, y: window.frame.height, width: self.collectionView.frame.width, height: self.collectionView.frame.height)
            }
        }) { (completed: Bool) in
            var sortData: [String: Any] = ["sortlink": "", "sortname": ""]
            
            switch(filter.name){
            case ("Newest"):
                sortData = ["sortlink": "sort:newest", "sortname": filter.name]
            case ("Oldest"):
                sortData = ["sortlink": "sort:oldest", "sortname": filter.name]
            case ("Cheapest"):
                sortData = ["sortlink": "sort:price-low", "sortname": filter.name]
            case ("Most Expensive"):
                sortData = ["sortlink": "sort:price-high", "sortname": filter.name]
            case ("High Mileage"):
                sortData = ["sortlink": "sort:mileage-high", "sortname": filter.name]
            case ("Low Mileage"):
                sortData = ["sortlink": "sort:mileage-low", "sortname": filter.name]
            default:
                sortData = ["sortlink": "", "sortname": ""]
            }
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "load"), object: nil, userInfo: sortData)
//            self.carListController?.collectionView?.reloadData()
        }
    }
    
    override init(){
        super.init()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        collectionView.register(FilterCell.self, forCellWithReuseIdentifier: cellID)
        
    }
    
}
