//
//  AnimalInfoViewController.swift
//  HelpPaw
//
//  Created by Богдан Радченко on 11.03.2023.
//

import UIKit

class AnimalInfoViewController: UIViewController {
    
    var animal: Animal!
    
    @IBOutlet var customView: UIView!
    
    @IBOutlet var nameAnimalLAbel: UILabel!
    @IBOutlet var yearsOldLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    @IBOutlet var animalImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameAnimalLAbel.text = animal.name
        yearsOldLabel.text = String(animal.age)
        descriptionLabel.text = animal.description
        animalImage.image = UIImage(named: "\(animal.name)")
        animalImage.layer.cornerRadius = animalImage.frame.height / 2
        // не меняется скругление у картинок
        
        customView.layer.cornerRadius = 20
        customView.makeShadow()
        customView.setupColor()
    }
}

private extension UIView {
    func makeShadow() {
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.7
        self.layer.shadowOffset = CGSizeZero
        self.layer.shadowRadius = 5
    }
    
    func setupColor() {
        let color = UIColor(
            red: 204/255,
            green: 204/255,
            blue: 255/255,
            alpha: 1
        )
        
        self.backgroundColor = color
    }
}
