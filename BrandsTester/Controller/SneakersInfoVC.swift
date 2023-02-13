//
//  SneakersInfoVC.swift
//  BrandsTester
//
//  Created by admin on 12.02.2023.
//

import UIKit

class SneakersInfoVC: UIViewController {
    
    var sneakers: Sneakers?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        overrideUserInterfaceStyle = .dark
    }

}

extension SneakersInfoVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "image")
            let imageView = cell?.viewWithTag(1) as! UIImageView
            imageView.backgroundColor = .green
            imageView.alpha = 0.5
            imageView.layer.cornerRadius = 20
            return cell!
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "simpleCell")
            let brandLabel = cell?.viewWithTag(1) as! UILabel
            let label = cell?.viewWithTag(2) as! UILabel
            label.text = "Brand :"
            brandLabel.text = sneakers?.brand
            return cell!
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "simpleCell")
            let modelLabel = cell?.viewWithTag(1) as! UILabel
            let label = cell?.viewWithTag(2) as! UILabel
            label.text = "Model :"
            modelLabel.text = sneakers?.model
            return cell!
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "simpleCell")
            let priceLabel = cell?.viewWithTag(1) as! UILabel
            let label = cell?.viewWithTag(2) as! UILabel
            label.text = "Price :"
            priceLabel.text = "$ " + (sneakers?.price)!
            return cell!
        default:
            return TableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 200
        default:
            return 90
        }
    }
    
    
}
