//
//  DemoCollectionViewCell.swift
//  SampleDSGApp
//
//  Created by Akshay Jain on 21/10/20.
//  Copyright © 2020 Collabera. All rights reserved.
//

import UIKit

class DemoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var textLbl: UILabel!
    
    override func awakeFromNib() {
        shadowDecorate() 
    }
    
    func setupCellInfo (info: Any) {
        textLbl.text = info as? String
    }
    
}

extension UICollectionViewCell {
    func shadowDecorate() {
        let radius: CGFloat = 10
        contentView.layer.cornerRadius = radius
        contentView.layer.borderWidth = 1
        contentView.layer.borderColor = UIColor.clear.cgColor
        contentView.layer.masksToBounds = true
    
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 1.0)
        layer.shadowRadius = 2.0
        layer.shadowOpacity = 0.5
        layer.masksToBounds = false
        layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: radius).cgPath
        layer.cornerRadius = radius
    }
}
