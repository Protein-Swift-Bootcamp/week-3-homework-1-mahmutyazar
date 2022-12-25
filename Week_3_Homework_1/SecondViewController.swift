//
//  SecondViewController.swift
//  Week_3_Homework_1
//
//  Created by Mahmut Yazar on 23.12.2022.
//

import UIKit


class SecondViewController: UIViewController {
    
    @IBOutlet weak var nameSurnameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var countryTextField: UITextField!
    
    weak var delegate: Delegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addGestureRecognizer(UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing(_:))))
    }
    
    
    @IBAction func saveButton(_ sender: Any) {
        
        let nameSurname: String = nameSurnameTextField.text ?? ""
        let age: String = ageTextField.text ?? ""
        let country: String = countryTextField.text ?? ""
        
        delegate?.nameSurnameReady(data: nameSurname)
        delegate?.ageReady(data: age)
        delegate?.countryReady(data: country)
        
        if nameSurnameTextField.text != "" && ageTextField.text != "" && countryTextField.text != "" {
            let alert = UIAlertController(title: "SUCCESS", message: "Your informations have been saved. \n You can check by returning to the Main Page.", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OKAY", style: UIAlertAction.Style.cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true)
            
        } else {
            let alert = UIAlertController(title: "FAIL", message: "You should fill all the fields!", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "BACK", style: UIAlertAction.Style.cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        }
    }
    
}
