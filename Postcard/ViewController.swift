//
//  ViewController.swift
//  Postcard
//
//  Created by Martin Corredor on 6/17/15.
//  Copyright (c) 2015 Martin Corredor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var messagelabel: UILabel!
    @IBOutlet weak var entermessagetextfield: UITextField!
    @IBOutlet weak var enterNameText: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var cLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //add comment commit adasd
        messagelabel.hidden = false
        messagelabel.text = entermessagetextfield.text
        messagelabel.textColor = UIColor.redColor()
        
        
        entermessagetextfield.text = ""
        entermessagetextfield.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        cLabel.text = enterNameText.text
        cLabel.textColor = UIColor.blueColor()
        enterNameText.text = ""
        enterNameText.resignFirstResponder()
    }

}

