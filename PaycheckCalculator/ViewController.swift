//
//  ViewController.swift
//  PaycheckCalculator
//
//  Created by student7 on 2/7/19.
//  Copyright © 2019 student7. All rights reserved.
//

import UIKit

//var hours: Double = 0
//var rate: Double = 0

//Create a dictionary with list of employee IDs and respective names
var employees = [123: "Richard", 124: "Luke", 125: "Cheryl"]
var employeeIDNum = Array(employees.keys)

class ViewController: UIViewController {

    @IBOutlet weak var employeeID: UITextField!
    
    @IBAction func lookUpEmplID(_ sender: UIButton) {
        
        //pop-up alert box if user leaves Employee ID field blank
        if employeeID.text == "" {
            
            // show alert
            let message = "Please fill out all the fields!"
            let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: { action in })
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            
        } else if !employeeIDNum.contains(Int(employeeID.text!)!) {
            // show alert
            let message = "Employee not found!"
            let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: { action in })
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
        }
        
        
        else {
            
            print(employees[Int(employeeID.text!)!])
            
        }
        
    }
    
    @IBOutlet weak var employeeName: UILabel!
    
    
    @IBOutlet weak var hoursWorked: UITextField!
    
    @IBOutlet weak var hourlyRate: UITextField!
    
    @IBOutlet weak var showTotal: UILabel!
    
    @IBAction func calcButton(_ sender: UIButton) {
        
        if hoursWorked.text == "" || hourlyRate.text == "" {
            
            // show alert
            let message = "Please fill out all the fields!"
            let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: { action in })
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            
        } else {
            
            let hours = Double(hoursWorked.text!)
            let rate = Double(hourlyRate.text!)
            let total = hours! * rate!
            showTotal.text = String(total)
            
        }
        
        //var total = hours * rate
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    
}


