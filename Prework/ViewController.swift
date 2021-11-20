//
//  ViewController.swift
//  Prework
//
//  Created by Miguel on 11/19/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        //Gets bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Gets the Total tip by multiplying tip * tipPercentage
        let tipPercentage = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Updates the Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        //Updates Total Amount
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
}

