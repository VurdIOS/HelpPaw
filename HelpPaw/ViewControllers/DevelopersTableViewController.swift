//
//  DevelopersTableViewController.swift
//  HelpPaw
//
//  Created by Камаль Атавалиев on 10.03.2023.
//

import UIKit

final class DevelopersTableViewController: UITableViewController {
    
    private let developers = Developers.getDevelopersInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Разработчики"
        tableView.rowHeight = 100
    }
}
    
    // MARK: - Table view data source
extension DevelopersTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        developers.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "developersCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let developer = developers[indexPath.row]
        
        content.text = developer.fullName
        content.secondaryText = developer.position
        content.image = UIImage(named: developer.name)
        cell.contentConfiguration = content
        cell.selectionStyle = .none
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

