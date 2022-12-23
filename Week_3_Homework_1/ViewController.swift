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
        // Do any additional setup after loading the view.
    }

    
    @IBAction func goButton(_ sender: Any) {
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
}

