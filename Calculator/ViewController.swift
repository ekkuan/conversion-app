//
//  ViewController.swift
//  Calculator
//
//  Created by Eric Kuan on 2/17/17.
//  Copyright © 2017 CS408. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lblResults: UITextField!
    
    var result = Float()
    var currentNumber = Float()
    
    var currentOp = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //println(&quot;Hello world&quot;)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnNumberInput(_ sender: UIButton) {
        currentNumber = currentNumber * 10 + Float(Int(sender.titleLabel!.text!)!)
        lblResults.text = ("\(Int(currentNumber))\(" cup")")
    }



    @IBAction func btnConvert(_ sender: UIButton) {
        result = currentNumber * 237
        lblResults.text = ("\(Int(result))\(" gram")")
        currentNumber = 0
        
    }
    

    @IBAction func btnClear(_ sender: UIButton) {
        result = 0
        currentNumber = 0
        currentOp = "="
        lblResults.text = ("\(result)")
    }

}

