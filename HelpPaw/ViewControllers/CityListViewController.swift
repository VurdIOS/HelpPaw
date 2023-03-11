//
//  CityListViewController.swift
//  HelpPaw
//
//  Created by Богдан Радченко on 11.03.2023.
//

import UIKit

class CityListViewController: UITableViewController {
    
    //var shelters: [Shelter]!
    let shelters = Shelter.getShelters()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Choose city"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let cellVC = segue.destination as? ShelterListViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        cellVC.sheltersOfCity = chooseSheltersFrom(City: City.allCases[indexPath.row])
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        City.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "city", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        content.text = City.allCases[indexPath.row].rawValue
        cell.contentConfiguration = content
        
        return cell
    }

}

private extension CityListViewController {
    func chooseSheltersFrom(City city: City) -> [Shelter] {
        var sheltersFromCity: [Shelter] = []
        
        for shelter in shelters where(shelter.city == city) {
            sheltersFromCity.append(shelter)
        }

        return sheltersFromCity
    }
}
