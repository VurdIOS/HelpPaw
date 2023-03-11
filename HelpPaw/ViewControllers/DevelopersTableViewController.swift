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
    
    func footerView() -> UIView {
        let whitView = UIView(frame:CGRect(x: 0, y: 0, width: 50, height: 500))
        view.addSubview(whitView)
        let imgView = UIImageView(frame:CGRect(x: 160, y: 20, width: 100, height: 100))
        imgView.image = UIImage(systemName: "pawprint.circle.fill")
        whitView.addSubview(imgView)
        return whitView
    }

    // MARK: - Table view data source

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
        
        
        return cell
    }
    
    
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return footerView()
    }


}
