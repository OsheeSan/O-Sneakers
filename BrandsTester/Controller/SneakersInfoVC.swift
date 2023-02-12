//
//  SneakersInfoVC.swift
//  BrandsTester
//
//  Created by admin on 12.02.2023.
//

import UIKit

class SneakersInfoVC: UIViewController {
    
    var brand = ""
    var model = ""
    
    var sneakers: Sneakers?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        overrideUserInterfaceStyle = .dark
    }

}

extension SneakersInfoVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
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
            let cell = tableView.dequeueReusableCell(withIdentifier: "brand")
            let brandLabel = cell?.viewWithTag(1) as! UILabel
            brandLabel.text = sneakers?.brand
            return cell!
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "model")
            let modelLabel = cell?.viewWithTag(1) as! UILabel
            modelLabel.text = sneakers?.model
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
