//
//  FindSneakersVC.swift
//  BrandsTester
//
//  Created by admin on 15.02.2023.
//

import UIKit

class FindSneakersVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let data = Data()
    var sneakers = [Sneakers]()
    var filteredSneakers = [Sneakers]()
    var choosenSneakers: Sneakers?

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.keyboardDismissMode = .onDrag
        for brand in data.brands {
            for sneaker in brand.goods {
                sneakers.append(sneaker)
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

extension FindSneakersVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredSneakers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sneakersCell")
        let modelName = cell?.viewWithTag(1) as! UILabel
        modelName.text = "\(filteredSneakers[indexPath.row].brand) \(filteredSneakers[indexPath.row].model)"
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        choosenSneakers = filteredSneakers[indexPath.row]
        performSegue(withIdentifier: "showSneakers", sender: UITableViewCell())
    }
    
    
}

extension FindSneakersVC: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            filteredSneakers = sneakers
        } else {
            filteredSneakers = sneakers.filter {
                if $0.model.lowercased().contains(searchText.lowercased())
                || $0.fullName!.lowercased().contains(searchText.lowercased())
                || $0.description!.lowercased().contains(searchText.lowercased())
                    || $0.brand.localizedCaseInsensitiveContains(searchText) {
                    return true
                }
                var sneakersName = $0.brand.lowercased() + " " + $0.model.lowercased()
                if sneakersName.contains(searchText.lowercased()) {
                    return true
                }
                sneakersName = $0.model.lowercased() + " " + $0.brand.lowercased()
                if sneakersName.contains(searchText.lowercased()) {
                    return true
                }
                return false
            }
        }
        tableView.reloadData()
    }
}
