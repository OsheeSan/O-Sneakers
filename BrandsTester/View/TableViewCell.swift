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
        CollectionView?.clipsToBounds = true
        CollectionView?.layer.cornerRadius = 20
    }

}

extension TableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.brands[collectionView.tag].goods.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionViewCell", for: indexPath) as! GoodsCollectionViewCell
        cell.sneakers = data.brands[collectionView.tag].goods[indexPath.row]
        return cell
    }
    
}
