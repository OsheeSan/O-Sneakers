//
//  TableViewCell.swift
//  BrandsTester
//
//  Created by admin on 10.02.2023.
//

import UIKit

class TableViewCell: UITableViewCell{

    let data = Data()
    
    var CollectionView: UICollectionView?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        CollectionView = viewWithTag(1) as? UICollectionView
        CollectionView?.delegate = self
        CollectionView?.dataSource = self
    }

}

extension TableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.brands[collectionView.tag].goods.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as! GoodsCollectionViewCell
        cell.brand = data.brands[collectionView.tag].name
        cell.model = data.brands[collectionView.tag].goods[indexPath.row]
        cell.NameLabel.text = data.brands[collectionView.tag].goods[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
}
