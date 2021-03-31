//
//  FirstViewController.swift
//  Excercise Calorie Calculator
//
//  Created by Jonathan Rhea on 3/28/21.
//

import UIKit

var userAge: Double?
var userWeight: Double?
var userGender: String = "Female"

class FirstViewController: UIViewController, UITextFieldDelegate{
    
    override func viewDidLoad(){
        super.viewDidLoad()
        self.yourAge.delegate = self
        self.yourWeight.delegate = self
    }
    
    
    
    @IBOutlet weak var yourAge: UITextField!
    @IBOutlet weak var yourWeight: UITextField!
    @IBOutlet weak var genderButton: UISegmentedControl!
    
    @IBAction func genderButton(_ sender: Any) {
        
        switch genderButton.selectedSegmentIndex {
        case 0:
          userGender = "Female"
        case 1:
          userGender = "Male"
        default:
           return
        }//end switch
    }
    
    
    @IBAction func savePersonalInfo(_ sender: Any) {
        userWeight = Double(yourWeight.text!)
        userAge = Double(yourAge.text!)
    }
    
    //method did not seem to matter in the end
    //func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //self.yourWeight.resignFirstResponder()
        //self.yourAge.resignFirstResponder()
        //return true
    //}
    
}//end class
