//
//  SneakersInfoVC.swift
//  BrandsTester
//
//  Created by admin on 12.02.2023.
//

import UIKit

class SneakersInfoVC: UIViewController {
    
    var sneakers: Sneakers?
    
    var imagesCollectionView: UICollectionView?
    
    let blurredEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .dark))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        blurredEffectView.frame = view.bounds
        let slider = view.viewWithTag(1)
        slider?.layer.cornerRadius = (slider?.frame.height)!/2
        view.addSubview(blurredEffectView)
        view.sendSubviewToBack(blurredEffectView)
        view.backgroundColor = UIColor(cgColor: CGColor(red: 0, green: 0, blue: 0, alpha: 0))
        overrideUserInterfaceStyle = .dark
    }

}

extension SneakersInfoVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        view.addSubview(tableView)
        tableView.backgroundColor = UIColor(cgColor: CGColor(red: 0, green: 0, blue: 0, alpha: 0.0))
        tableView.clipsToBounds = true
        tableView.layer.cornerRadius = 20
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "image")
            imagesCollectionView = cell?.viewWithTag(1) as? UICollectionView
            imagesCollectionView?.backgroundColor = UIColor(cgColor: CGColor(red: 0.572, green: 0.102, blue: 0.123, alpha: 1))
            cell?.clipsToBounds = true
            cell?.layer.cornerRadius = 20
            cell?.backgroundColor = UIColor(cgColor: CGColor(red: 0.572, green: 0.102, blue: 0.123, alpha: 1))
            return cell!
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "simpleCell")
            let brandLabel = cell?.viewWithTag(1) as! UILabel
            let label = cell?.viewWithTag(2) as! UILabel
            label.text = "Brand :"
            brandLabel.text = sneakers?.brand
            cell!.backgroundView?.frame = CGRectOffset(cell!.frame, 10, 10);
            cell?.backgroundColor = UIColor(cgColor: CGColor(red: 0, green: 0, blue: 0, alpha: 0))
            return cell!
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "simpleCell")
            let modelLabel = cell?.viewWithTag(1) as! UILabel
            let label = cell?.viewWithTag(2) as! UILabel
            label.text = "Model :"
            modelLabel.text = sneakers?.model
            cell!.backgroundView?.frame = CGRectOffset(cell!.frame, 10, 10);
            cell?.backgroundColor = UIColor(cgColor: CGColor(red: 0, green: 0, blue: 0, alpha: 0))
            return cell!
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "simpleCell")
            let priceLabel = cell?.viewWithTag(1) as! UILabel
            let label = cell?.viewWithTag(2) as! UILabel
            label.text = "Price :"
            priceLabel.text = "$ " + (sneakers?.price)!
            cell!.backgroundView?.frame = CGRectOffset(cell!.frame, 10, 10);
            cell?.backgroundColor = UIColor(cgColor: CGColor(red: 0, green: 0, blue: 0, alpha: 0))
            return cell!
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: "simpleCell")
            let idLabel = cell?.viewWithTag(1) as! UILabel
            let label = cell?.viewWithTag(2) as! UILabel
            label.text = "Full Name :"
            idLabel.text = sneakers?.fullName
            cell!.backgroundView?.frame = CGRectOffset(cell!.frame, 10, 10);
            cell?.backgroundColor = UIColor(cgColor: CGColor(red: 0, green: 0, blue: 0, alpha: 0))
            return cell!
        case 5:
            let cell = tableView.dequeueReusableCell(withIdentifier: "descriptionCell")
            let descriptionLabel = cell?.viewWithTag(1) as! UILabel
            descriptionLabel.text = sneakers?.description
            cell?.backgroundColor = UIColor(cgColor: CGColor(red: 0, green: 0, blue: 0, alpha: 0))
            return cell!
        default:
            return TableViewCell()
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row{
        case 0:
            if let image = UIImage(named: (sneakers?.photos[0])!){
                return tableView.frame.width*image.size.height/image.size.width //UITableView.automaticDimension
            }
            return tableView.frame.width*12/16
        case 1...4:
            return 90
        default:
            return UITableView.automaticDimension
        }
    }
}

extension SneakersInfoVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (sneakers?.photos.count)!
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageCell", for: indexPath)
        let imageView = cell.viewWithTag(1) as! UIImageView
        if sneakers?.photos.first != nil {
            imageView.image = UIImage(named: (sneakers?.photos[indexPath.row])!)
        } else {
            imageView.image = UIImage(named: "mn-sneakers-no-image")
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
}
