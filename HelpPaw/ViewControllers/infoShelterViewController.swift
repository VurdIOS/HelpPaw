//
//  infoShelterViewController.swift
//  HelpPaw
//
//  Created by Elena Petrova on 11.03.2023.
//

import UIKit

final class infoShelterViewController: UIViewController {

    @IBOutlet var logoShelterImage: UIImageView! {
        didSet {
            logoShelterImage.layer.cornerRadius = logoShelterImage.frame.height / 2
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
