//
//  UserProfileViewController.swift
//  HelpPaw
//
//  Created by Виктория Страдзина on 11.03.2023.
//

import UIKit

final class UserProfileViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var addressOfResidenceTextField: UITextField!
    @IBOutlet var contactNumberTextField: UITextField!
    @IBOutlet var childrenTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addToolBar()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func sendQuestionnaire() {
        checkTextFields()
    }
}

//MARK: - AlertController
extension UserProfileViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
            textField?.becomeFirstResponder()
        }
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
    
    //MARK: - Private Methods
    private func checkTextFields() {
        let questionnaireTextFields = [
            userNameTextField,
            addressOfResidenceTextField,
            contactNumberTextField,
            childrenTextField
        ]
        
        var allFieldsFilled = true
        
        for questionnaireTextField in questionnaireTextFields {
            guard let text = questionnaireTextField?.text, !text.isEmpty else {
                allFieldsFilled = false
                break
            }
        }
        
        if allFieldsFilled {
            showAlert(
                title: "Анкета отправлена",
                message: "Спасибо, что помогли обрести дом еще одному пушистику!🐶🐱"
            )
            
            for questionnaireTextField in questionnaireTextFields {
                questionnaireTextField?.text = ""
            }
        } else {
            showAlert(
                title: "Ой!",
                message: "Пожалуйста, заполните все поля в анкете.😿"
            )
        }
    }
    
    private func addToolBar() {
        let keyboardToolbar = UIToolbar()
        keyboardToolbar.sizeToFit()
        contactNumberTextField.inputAccessoryView = keyboardToolbar
        
        let doneButton = UIBarButtonItem(
            barButtonSystemItem: .done,
            target: self,
            action: #selector(doneButtonPressed)
        )
        
        let flexBarButton = UIBarButtonItem(
            barButtonSystemItem: .flexibleSpace,
            target: nil,
            action: nil
        )
        
        keyboardToolbar.items = [flexBarButton, doneButton]
    }
    
    @objc func doneButtonPressed() {
        view.endEditing(true)
    }
}

//MARK: - UITextFieldDelegate
extension UserProfileViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}
