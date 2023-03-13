//
//  AnimalInfoViewController.swift
//  HelpPaw
//
//  Created by Богдан Радченко on 11.03.2023.
//

import UIKit

final class AnimalInfoViewController: UIViewController {
    
    var animal: Animal!
    
    @IBOutlet var customView: UIView!
    
    @IBOutlet var nameAnimalLAbel: UILabel!
    @IBOutlet var yearsOldLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    @IBOutlet var animalImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "О животном"
        
        nameAnimalLAbel.text = animal.name
        yearsOldLabel.text = String(animal.age)
        descriptionLabel.text = animal.description
        animalImage.image = UIImage(named: "\(animal.name)")
        animalImage.layer.cornerRadius = 20
        
        customView.makeShadow()
        setupView()
    }
    
    private func setupView() {
        customView.layer.cornerRadius = 20
        customView.backgroundColor = .systemBrown
    }
}

private extension UIView {
    func makeShadow() {
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.7
        self.layer.shadowOffset = CGSizeZero
        self.layer.shadowRadius = 5
    }
}
