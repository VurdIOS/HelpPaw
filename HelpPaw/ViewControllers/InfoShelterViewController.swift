//
//  InfoShelterViewController.swift
//  HelpPaw
//
//  Created by Roman Lantsov on 11.03.2023.
//

import UIKit

class InfoShelterViewController: UIViewController {
    
    var shelter: Shelter!

    @IBOutlet var logoShelterImage: UIImageView! {
        didSet {
//            logoShelterImage.layer.cornerRadius  = logoShelterImage.frame.height / 2
        }
    }
    
    @IBOutlet var nameShelterLabel: UILabel!
    @IBOutlet var addressShelterLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameShelterLabel.text = shelter.name
        addressShelterLabel.text = shelter.address
        logoShelterImage.image = UIImage(named: shelter.name)
    }
    


}
