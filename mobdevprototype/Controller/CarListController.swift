//
//  ViewController.swift
//  mobdevprototype
//
//  Created by Dré on 23/05/2018.
//  Copyright © 2018 dreyworks. All rights reserved.
//

import UIKit
import NVActivityIndicatorView


class CarListController: UICollectionViewController, UICollectionViewDelegateFlowLayout, NVActivityIndicatorViewable {
    
    private let cellID = "cellID"
    
    fileprivate var carlists = [ResultsEntity]()
    var refresher: UIRefreshControl!
    
    var carlistscount = 0
    var pagenum: Int = 1
    var fromRefresh = false
    var firstLoad = false
    var maxitems = 10
    var dumaanNa = false
    public var sortlink:String = "" // sort:oldest, sort:newest, sort:price-low, sort:price-high, sort:mileage-low, sort:mileage-high

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let memoryCapacity = 500 * 1024 * 1024
        let diskCapacity = 500 * 1024 * 1024
        let urlCache = URLCache(memoryCapacity: memoryCapacity, diskCapacity: diskCapacity, diskPath: "myDataPath")
        URLCache.shared = urlCache
        
        navigationItem.title = "Carlist"
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0/225, green: 111/255, blue: 193/255, alpha: 1)
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        
        collectionView?.alwaysBounceVertical = true
        collectionView?.backgroundColor = UIColor(white: 0.95, alpha: 1)
        collectionView?.register(CarListCell.self, forCellWithReuseIdentifier: cellID)
        
        // notify reload
        NotificationCenter.default.addObserver(self, selector: #selector(loadList), name:NSNotification.Name(rawValue: "load"), object: nil)
        
        refresher = UIRefreshControl()
        refresher.tintColor = UIColor(red: 0/225, green: 111/255, blue: 193/255, alpha: 1)
        refresher.addTarget(self, action: #selector(CarListController.refresh), for: UIControlEvents.valueChanged)
        collectionView?.addSubview(refresher!)
        
        self.loadMoreData(page: 1, sort: self.sortlink)
        print("DID LOAD")
        
        setupNavBarButtons()
    }
    
    func loadList(notification: NSNotification){
        if let sortlink_ = notification.userInfo!["sortlink"] as? String {
            self.sortlink = sortlink_
        }
        
        if let sortname = notification.userInfo!["sortname"] as? String {
            navigationItem.title = sortname == "" ? "Carlist" : "Carlist - \(sortname)"
        }
        
        self.refresh()
    }
    
    func setupNavBarButtons(){
        let moreButtonItem = UIBarButtonItem(image: UIImage(named: "nav-Icon-App-20x20"), style: .plain, target: self, action: #selector(handleMore))
        moreButtonItem.tintColor = UIColor.white
        navigationItem.rightBarButtonItems = [moreButtonItem]
        
    }
    
    let filterLauncher = FilterLauncher()
    
    func handleMore(){
        // show filter
        filterLauncher.showFilter()
    }
    
    func refresh() {
        DispatchQueue.main.async{
            self.carlists.removeAll()
            self.pagenum = 1
            self.fromRefresh = true
            self.firstLoad = true
            self.loadMoreData(page: 1, sort: self.sortlink)
            
            self.collectionView?.reloadData()
        }
        refresher.endRefreshing()
        self.fromRefresh = false
    }
    
    func loadMoreData(page: Int, sort: String) {
        self.startAnimating()
        
        let env = ApiEnvironment.production
        let context = NonPersistentApiContext(environment: env)
        let carListService = AlamofireCarListService(context: context)

        carListService.getAllCarList(page: page, maxitems: maxitems, sort: sortlink) { (carlistresult, error) in
            if let error = error {
                self.stopAnimating()
                self.alertMessage(title: "Network Error", message: "Please connect to internet.")
                return print(error.localizedDescription)
            }
            
            if let result = carlistresult {
                print("laman: \((result.metadata?.product_count)!)")
                self.carlistscount = (result.metadata?.results.count)!
                
                print("PAGENUM: \(self.pagenum)")
                if result.metadata?.results.count != 0 && self.fromRefresh == true
                {
                    if self.pagenum <= 1 {
                        self.carlists.removeAll()
                    }
                }
                
                if result.success == true {
                    let count = result.metadata?.results.count
                    print("LAMAN NG RESULTS: \(count)")
                    var x: Int = 0
                    while x < count! {
                        self.carlists.append((result.metadata?.results[x])!)
                        x += 1
                    }
                    self.stopAnimating()
                }
            }
            
            self.collectionView?.reloadData()
            self.pagenum += 1
            self.dumaanNa = false
            
//            if self.dumaanNa == true {
//
//
//            }else {
//                if self.firstLoad == true {
//                    self.firstLoad = false
//                }
//                self.dumaanNa = true
//            }
            
            self.stopAnimating()
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.carlists.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        return collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) // for templating only
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! CarListCell
        let thecarlists = carlists[indexPath.row]
        
        
        cell.nameLabel.text = thecarlists.data?.name
        let engine = (thecarlists.data?.attributes?.engine != nil) ? "\((thecarlists.data?.attributes?.engine)!) cc" : "-"
        cell.carInfoLabel.text = "\((thecarlists.data?.transmission)!) • \((thecarlists.data?.fuel)!) • \(engine)"
        cell.priceLabel.text = thecarlists.data?.original_price
        cell.locLabel.text = thecarlists.data?.listing_city
        
        cell.previewImage.loadImage(urlString: "\((thecarlists.images[0].url))")
        
        
        cell.layer.shadowColor = UIColor.lightGray.cgColor
        cell.layer.shadowOffset = CGSize(width:0,height: 2.0)
        cell.layer.shadowRadius = 2.0
        cell.layer.shadowOpacity = 1.0
        cell.layer.masksToBounds = false;
        cell.layer.shadowPath = UIBezierPath(roundedRect:cell.bounds, cornerRadius:cell.contentView.layer.cornerRadius).cgPath
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    
        let thecarlists = carlists[indexPath.row]
        if let nameText = thecarlists.data?.name {
            let rect = NSString(string: nameText).boundingRect(with: CGSize(width: view.frame.width, height: 500), options: NSStringDrawingOptions.usesFontLeading.union(NSStringDrawingOptions.usesLineFragmentOrigin), attributes: [NSFontAttributeName: UIFont.systemFont(ofSize: 14)], context: nil)
            let knownHeight: CGFloat  = 140 + 20 + 20 + 20 + 15 + 30 + 20
            return CGSize(width: view.frame.width, height: knownHeight + rect.height)
        }
        
        return CGSize(width: view.frame.width, height: 250)
    }
    
    
    override func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        let currentOffset = scrollView.contentOffset.y
        let maximumOffset = scrollView.contentSize.height - scrollView.frame.size.height
        
        if maximumOffset - currentOffset <= -20 {
            let when = DispatchTime.now() + 0.1
            DispatchQueue.main.asyncAfter(deadline: when) {
                self.loadMoreData(page: self.pagenum, sort: self.sortlink)
            }
        }
    }
    

}

extension UICollectionViewController {
    
    func alertMessage(title: String, message: String){
        let msgbox = AlertHelper()
        msgbox.showAlert(fromController: self, title: title, message: message)
    }
    
}
