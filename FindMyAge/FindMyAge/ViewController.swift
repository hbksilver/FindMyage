//
//  ViewController.swift
//  FindMyAge
//
//  Created by Hassan Baraka on 09.01.2024.
//  Copyright © 2018 Hassan Baraka All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var txtYearOfBirth: UITextField!
    @IBOutlet weak var labelShowAge: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func btnFindAge(_ sender: Any) {
        
        let yearOfBirth = Int (txtYearOfBirth.text!)
        
        // date, clender, and year functions
        let date = Date()
        let calendar = Calendar.current
        let year = calendar.component(.year, from: date)
        
        // personAge function
        let personAge = year - yearOfBirth!
        
        // let personAge = 2018 - yearOfBirth!
        
        // output
        labelShowAge.text = "Your age is \(personAge) years old"
    }
    
    // touchesBegan function
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    // return
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        self.view.endEditing(true)
        return true
    }
    
}

