//
//  UserProfileViewController.swift
//  HelpPaw
//
//  Created by Виктория Страдзина on 11.03.2023.
//

import UIKit

class UserProfileViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var ageTextField: UITextField!
    @IBOutlet var addressOfResidenceTextField: UITextField!
    @IBOutlet var contactNumberTextField: UITextField!
    @IBOutlet var childrenTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sendQuestionnaire() {
        let  questionnaireTextFields = [userNameTextField, ageTextField, addressOfResidenceTextField, contactNumberTextField, childrenTextField]
        
        var allFieldsFilled = true
        for questionnaireTextField in questionnaireTextFields {
            if questionnaireTextField?.text?.isEmpty ?? true {
                allFieldsFilled = false
                break
            }
        }
        
        if allFieldsFilled {
            let alertController = UIAlertController(title: "Анкета отправлена", message: "Спасибо, что помогли обрести дом еще одному пушистику!🐶🐱", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "Готово", style: .default, handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
            
            for questionnaireTextField in questionnaireTextFields {
                questionnaireTextField?.text = ""
            }
            
        } else {
            
            let alertController = UIAlertController(title: "Ой!", message: "Пожалуйста, заполните все поля в анкете.😿", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }
    }
}