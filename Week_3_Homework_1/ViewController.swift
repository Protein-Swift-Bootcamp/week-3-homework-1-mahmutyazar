//
//  ViewController.swift
//  Week_3_Homework_1
//
//  Created by Mahmut Yazar on 22.12.2022.
//

import UIKit

class ViewController: UIViewController {
   
        
    @IBOutlet weak var nameSurnameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func goButton(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "SecondVCID") as! SecondViewController
        vc.title = "Personal Information"
        vc.delegate1 = self
        vc.delegate2 = self
        vc.delegate3 = self
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

extension ViewController: NameSurnameDelegate {
    
    func nameSurnameReady(data: String) {
        nameSurnameLabel.text = (data)
        
        if data == "" {
            nameSurnameLabel.text = "Name Surname"
        }
    }
}

extension ViewController: AgeDelegate {
    func ageReady(data: String) {
        ageLabel.text = (data)
        
        if data == "" {
            ageLabel.text = "Age"
        }
    }
}

extension ViewController: CountryDelegate {
    func countryReady(data: String) {
        countryLabel.text = (data)
        if data == "" {
            countryLabel.text = "Country"
        }
    }
}
