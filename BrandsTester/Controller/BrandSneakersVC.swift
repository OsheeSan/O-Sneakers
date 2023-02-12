//
//  BrandSneakersVC.swift
//  BrandsTester
//
//  Created by admin on 12.02.2023.
//

import UIKit

class BrandSneakersVC: UIViewController {
    
    var brand = ""
    var models = [Sneakers]()
    let data = Data()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        overrideUserInterfaceStyle = .dark
        title = brand
        for i in 0..<data.brands.count{
            if brand == data.brands[i].name {
                models = data.brands[i].goods
                break
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSneakers" {
            let controler = segue.destination as! SneakersInfoVC
            controler.brand = brand
        }
    }

}

extension BrandSneakersVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "modelCell")
        let modelLabel = cell?.viewWithTag(1) as! UILabel
        modelLabel.text = models[indexPath.row].model
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "showSneakers", sender: UITableViewCell())
    }
    
    
}
