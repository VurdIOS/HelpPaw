//
//  AnimalListViewController.swift
//  HelpPaw
//
//  Created by Богдан Радченко on 11.03.2023.
//

import UIKit

final class AnimalListViewController: UITableViewController {

    var animals: [Animal]!

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Список животных приюта"
        tableView.rowHeight = 160
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let animalInfoVC = segue.destination as? AnimalInfoViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        animalInfoVC.animal = animals[indexPath.row]
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        animals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "animalInfo", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        content.text = animals[indexPath.row].name
        content.textProperties.alignment = .center
        content.image = UIImage(named: "\(animals[indexPath.row].name)")
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        
        cell.contentConfiguration = content
        
        return cell
    }
}
