//
//  BrandSneakersVC.swift
//  BrandsTester
//
//  Created by admin on 12.02.2023.
//

import UIKit

class BrandSneakersVC: UIViewController {

    var brand = "Error"
    var sneakers = [Sneakers]()
    var filteredSneakers = [Sneakers]()
    var choosenSneakers: Sneakers?
    let data = Data()

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.keyboardDismissMode = .onDrag
        view.backgroundColor = .black
        overrideUserInterfaceStyle = .dark
        title = brand
        for i in 0..<data.brands.count{
            if brand == data.brands[i].name {
                sneakers = data.brands[i].goods
                break
            }
        }
        filteredSneakers = sneakers
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSneakers" {
            let controler = segue.destination as! SneakersInfoVC
            controler.sneakers = choosenSneakers
        }
    }

}

extension BrandSneakersVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        filteredSneakers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "modelCell")
        let modelLabel = cell?.viewWithTag(1) as! UILabel
        modelLabel.text = filteredSneakers[indexPath.row].model
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        choosenSneakers = filteredSneakers[indexPath.row]
        performSegue(withIdentifier: "showSneakers", sender: UITableViewCell())
    }
    
    
}

extension BrandSneakersVC: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            filteredSneakers = sneakers
        } else {
            filteredSneakers = sneakers.filter {
                $0.model.lowercased().contains(searchText.lowercased())
                || $0.fullName!.lowercased().contains(searchText.lowercased())
                || $0.description!.lowercased().contains(searchText.lowercased())
            }
        }
        tableView.reloadData()
    }
}

