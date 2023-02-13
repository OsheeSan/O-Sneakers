//
//  GoodsCollectionViewCell.swift
//  BrandsTester
//
//  Created by admin on 11.02.2023.
//

import UIKit

class GoodsCollectionViewCell: UICollectionViewCell {
    
    var sneakers: Sneakers? {
        didSet{
            if let image = UIImage(named: nameToImage(brand: sneakers!.brand, model: sneakers!.model)) {
                imageView.image = image
                NameLabel.textColor = .black
            } else {
                imageView.image = UIImage(named: "sneakers-no-image")
                NameLabel.textColor = .white
            }
            NameLabel.text = sneakers?.model
        }
    }
    
    var imageView: UIImageView!
    
    var NameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.clipsToBounds = true
        self.layer.cornerRadius = 20
        self.backgroundColor = .red
        imageView = viewWithTag(1) as? UIImageView
        NameLabel = viewWithTag(2) as? UILabel
    }
    
}
