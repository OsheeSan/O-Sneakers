//
//  ViewController.swift
//  BrandsTester
//
//  Created by admin on 10.02.2023.
//

import UIKit

class BrandsVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        overrideUserInterfaceStyle = .dark
    }
    
    let data = Data()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSneakers" {
            let choosenCell = sender as! GoodsCollectionViewCell
            let controller = segue.destination as! SneakersInfoVC
            controller.model = choosenCell.model
            controller.brand = choosenCell.brand
            self.tabBarController?.tabBar.backgroundColor = .black
        }
    }

}

extension BrandsVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell") as! TableViewCell
        cell.CollectionView?.tag = indexPath.section
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        data.brands.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return data.brands[section].name
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let header = view as! UITableViewHeaderFooterView
        header.textLabel?.numberOfLines = 0
        header.textLabel?.font = UIFont(name: "Avenir-Book",size: 14)
        header.textLabel?.textColor = .white
    }
}

