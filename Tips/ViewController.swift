//
//  ViewController.swift
//  Tips
//
//  Created by Farida Sabry on 12/5/15.
//  Copyright (c) 2015 Bedengan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var totalLabel2: UILabel!
    @IBOutlet weak var totalLabel3: UILabel!
    @IBOutlet weak var totalLabel4: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        self.title = "Tipper"
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        var tipPercentages = [0.15, 0.20, 0.25]
        var percent = tipPercentages[tipControl.selectedSegmentIndex]
        var billAmount = NSString(string: billField.text!).doubleValue
        var tip = billAmount * percent
        var total = billAmount + tip
        var total_2 = total/2
        var total_3 = total/3
        var total_4 = total/4
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        totalLabel2.text = String(format: "$%.2f", total_2)
        totalLabel3.text = String(format: "$%.2f", total_3)
        totalLabel4.text = String(format: "$%.2f", total_4)
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

