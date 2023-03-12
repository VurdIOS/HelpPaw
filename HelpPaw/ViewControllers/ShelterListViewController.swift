//
//  ShelterListViewController.swift
//  HelpPaw
//
//  Created by Богдан Радченко on 11.03.2023.
//

import UIKit

final class ShelterListViewController: UITableViewController {

    var sheltersOfCity: [Shelter]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Выберите приют"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let animalsVC = tabBarVC.viewControllers?.last as? AnimalListViewController else { return }
        guard let infoShelterVC = tabBarVC.viewControllers?.first as? InfoShelterViewController else { return }
        
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        animalsVC.animals = sheltersOfCity[indexPath.row].animals
        infoShelterVC.shelter = sheltersOfCity[indexPath.row]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sheltersOfCity.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "shelterInfo", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        content.text = sheltersOfCity[indexPath.row].name
        content.secondaryText = sheltersOfCity[indexPath.row].address
        
        cell.contentConfiguration = content
        
        return cell
    }
}
