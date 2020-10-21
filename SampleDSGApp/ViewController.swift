//
//  ViewController.swift
//  SampleDSGApp
//
//  Created by Akshay Jain on 21/10/20.
//  Copyright © 2020 Collabera. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate,  UICollectionViewDelegateFlowLayout {
   
    @IBOutlet weak var dashBoardCollectionView: UICollectionView!
     let array = ["Tier level", "Discounts & Coupons", "Today’s recommendations" , "QR Reader"]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        dashBoardCollectionView.delegate = self
        dashBoardCollectionView.dataSource = self
        
    }


}
 
extension ViewController {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
     }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DemoCollectionViewCell", for: indexPath) as! DemoCollectionViewCell
        cell.setupCellInfo(info: array[indexPath.row])
    return cell
    }
    
    
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width:UIScreen.main.bounds.width/2-20  , height: UIScreen.main.bounds.height/4)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
        print("0")
        case 3:
            let  qrCodeRederViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "QRCodeReaderViewController") as! QRCodeReaderViewController
            
            self.navigationController?.pushViewController(qrCodeRederViewController, animated: false)
            
        default:
        print("0")
        }
        
    }
    
}

 
