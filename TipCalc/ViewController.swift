//
//  ViewController.swift
//  TipCalc
//
//  Created by Vicky Tang on 12/10/16.
//  Copyright © 2016 Vicky Tang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var splitLabel: UILabel!
    @IBOutlet weak var decrementButton: UIButton!
    @IBOutlet weak var incrementButton: UIButton!
    
    //Properties
    var split = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.billField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Dismiss keyboard when you tap on the screen
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func splitDec(sender: UIButton) {
        if split - 1 >= 1 {
            split = split - 1
            updateSplitLbl()
            calculateTip(UIButton)
        }
    }
    
    @IBAction func splitInc(sender: UIButton) {
        split = split + 1
        updateSplitLbl()
        calculateTip(UIButton)
    }
    
    func updateSplitLbl() {
        splitLabel.text = "\(split)"
    }
    
    @IBAction func calculateTip(sender: AnyObject) {
        let tipPercentages = [0.15, 0.2, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = (bill + tip) / Double(split)
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)

    }
    
}


