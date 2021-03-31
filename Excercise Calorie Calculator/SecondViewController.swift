//
//  SecondViewController.swift
//  Excercise Calorie Calculator
//
//  Created by Jonathan Rhea on 3/28/21.
//

import UIKit
var userExerciseTime: Double?
var userHeartRate: Double?


class SecondViewController: UIViewController{
    
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    
    @IBOutlet weak var exerciseTime: UITextField!
    @IBOutlet weak var avgHeartRate: UITextField!
    
    @IBAction func saveExerciseInfo(_ sender: Any) {
        userExerciseTime = Double(exerciseTime.text!)
        userHeartRate = Double(avgHeartRate.text!)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.exerciseTime.resignFirstResponder()
        self.avgHeartRate.resignFirstResponder()
        return true
    }
    
}//end class
