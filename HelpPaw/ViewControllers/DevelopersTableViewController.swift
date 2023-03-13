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
        5
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
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let View = UIView(frame:CGRect(x: 0,
                                       y: 0,
                                       width: view.frame.width,
                                       height: 100))
        view.addSubview(View)
        
        let imgView = UIImageView(frame:CGRect(x: View.frame.width / 2 - 35,
                                               y: 30,
                                               width: 100,
                                               height: 100))
        
        imgView.image = UIImage(systemName: "pawprint.circle.fill")
        imgView.tintColor = .systemBrown
        View.addSubview(imgView)
        return View
    }
    
}

