//
//  SneakersInfoVC.swift
//  BrandsTester
//
//  Created by admin on 12.02.2023.
//

import UIKit

class SneakersInfoVC: UIViewController {
    
    var sneakers: Sneakers?
    
    var imageName: String?
    
    let blurredEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .dark))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        blurredEffectView.frame = view.bounds
        imageName = sneakers?.photos[0]
        view.addSubview(blurredEffectView)
        view.backgroundColor = UIColor(cgColor: CGColor(red: 0, green: 0, blue: 0, alpha: 0))
        overrideUserInterfaceStyle = .dark
    }

}

extension SneakersInfoVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        view.addSubview(tableView)
        tableView.backgroundColor = UIColor(cgColor: CGColor(red: 0, green: 0, blue: 0, alpha: 0.4))
        tableView.clipsToBounds = true
        tableView.layer.cornerRadius = 20
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "image")
            let imageView = cell?.viewWithTag(1) as! UIImageView
            imageView.backgroundColor = .green
            imageView.layer.cornerRadius = 20
            imageView.image = UIImage(named: imageName!)
            imageView.contentMode = .scaleAspectFill
            cell!.backgroundView?.frame = CGRectOffset(cell!.frame, 10, 10);
            return cell!
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "simpleCell")
            let brandLabel = cell?.viewWithTag(1) as! UILabel
            let label = cell?.viewWithTag(2) as! UILabel
            label.text = "Brand :"
            brandLabel.text = sneakers?.brand
            cell?.clipsToBounds = true
            cell?.layer.cornerRadius = (cell?.frame.height)!/2
            cell?.backgroundColor = .black
            cell!.backgroundView?.frame = CGRectOffset(cell!.frame, 10, 10);
            return cell!
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "simpleCell")
            let modelLabel = cell?.viewWithTag(1) as! UILabel
            let label = cell?.viewWithTag(2) as! UILabel
            label.text = "Model :"
            modelLabel.text = sneakers?.model
            cell?.clipsToBounds = true
            cell?.layer.cornerRadius = (cell?.frame.height)!/2
            cell?.backgroundColor = .black
            cell!.backgroundView?.frame = CGRectOffset(cell!.frame, 10, 10);
            return cell!
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "simpleCell")
            let priceLabel = cell?.viewWithTag(1) as! UILabel
            let label = cell?.viewWithTag(2) as! UILabel
            label.text = "Price :"
            priceLabel.text = "$ " + (sneakers?.price)!
            cell?.clipsToBounds = true
            cell?.layer.cornerRadius = (cell?.frame.height)!/2
            cell?.backgroundColor = .black
            cell!.backgroundView?.frame = CGRectOffset(cell!.frame, 10, 10);
            return cell!
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: "simpleCell")
            let idLabel = cell?.viewWithTag(1) as! UILabel
            let label = cell?.viewWithTag(2) as! UILabel
            label.text = "ID :"
            idLabel.text = sneakers?.id
            cell?.clipsToBounds = true
            cell?.layer.cornerRadius = (cell?.frame.height)!/2
            cell?.backgroundColor = .black
            cell!.backgroundView?.frame = CGRectOffset(cell!.frame, 10, 10);
            return cell!
        default:
            return TableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.row {
        case 0:
            return 300
        default:
            return 90
        }
    }
    
    
}
