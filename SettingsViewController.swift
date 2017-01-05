//
//  SettingsViewController.swift
//  TipCalc
//
//  Created by Vicky Tang on 12/25/16.
//  Copyright © 2016 Vicky Tang. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var thirdTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeFirstTip(sender: AnyObject) {
        // Set an Integer value for some key.
        NSUserDefaults.standardUserDefaults().setValue(Double(firstTextField.text!), forKey: "firstTip")
        
        // Force UserDefaults to save.
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    
    @IBAction func changeSecondTip(sender: AnyObject) {
        // Set an Integer value for some key.
        NSUserDefaults.standardUserDefaults().setValue(Double(secondTextField.text!), forKey: "secondTip")
        
        // Force UserDefaults to save.
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    
    @IBAction func changeThirdTip(sender: AnyObject) {
        // Set an Integer value for some key.
        NSUserDefaults.standardUserDefaults().setValue(Double(thirdTextField.text!), forKey: "thirdTip")
        
        // Force UserDefaults to save.
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
