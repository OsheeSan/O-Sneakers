//
//  GoodsCollectionViewCell.swift
//  BrandsTester
//
//  Created by admin on 11.02.2023.
//

import UIKit

class GoodsCollectionViewCell: UICollectionViewCell {
    
    var brand = "" {
        didSet {
            switch brand {
            case "Adidas":
                imageView.image = UIImage(named: "adidas-superstar")
            case "Nike":
                imageView.image = UIImage(named: "nike-air-jordan")
            case "Asics":
                imageView.image = UIImage(named: "asics-gel-kayano")
            case "New Balance":
                imageView.image = UIImage(named: "new-balance-990")
            default:
                break
            }
        }
    }
    var model = ""
    
    var imageView: UIImageView!
    
    var NameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.clipsToBounds = true
        self.layer.cornerRadius = 20
        self.backgroundColor = .red
        imageView = viewWithTag(1) as? UIImageView
        NameLabel = viewWithTag(2) as? UILabel
        print(brand + " k ")
    }
    
}
