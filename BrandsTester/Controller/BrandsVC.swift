//
//  ViewController.swift
//  BrandsTester
//
//  Created by admin on 10.02.2023.
//

import UIKit

class BrandsVC: UIViewController {
    
    let data = Data()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        overrideUserInterfaceStyle = .dark
        self.tabBarController?.tabBar.backgroundColor = .black
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSneakers" {
            let choosenCell = sender as! GoodsCollectionViewCell
            let controller = segue.destination as! SneakersInfoVC
            controller.sneakers = choosenCell.sneakers
        }
        if segue.identifier == "showBrand" {
            let choosenBrand = sender as! UIButton
            let controller = segue.destination as! BrandSneakersVC
            controller.brand = choosenBrand.titleLabel!.text!
        }
        
    }
    
    
    @IBAction func infoButton(_ sender: UIBarButtonItem) {
        guard let url = URL(string: "https://github.com/OsheeSan") else { return }
        UIApplication.shared.open(url)
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
        let brandButton = UIButton()
        brandButton.frame = header.bounds
        brandButton.titleLabel?.text = data.brands[section].name
        header.addSubview(brandButton)
        brandButton.addTarget(self, action: #selector(showBrands), for: .touchUpInside)
        header.textLabel?.numberOfLines = 0
        header.textLabel?.font = UIFont(name: "Avenir-Book",size: 14)
        header.textLabel?.textColor = .white
    }
    
    @objc func showBrands(sender: UIButton){
        performSegue(withIdentifier: "showBrand", sender: sender)
    }
   
}


