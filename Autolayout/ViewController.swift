//
//  ViewController.swift
//  Autolayout
//
//  Created by David Anglin on 2/8/16.
//  Copyright © 2016 David Anglin. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
    }

    var secure: Bool = false { didSet {updateUI() } }
    
    private func updateUI() {
        passwordField.secureTextEntry = secure
        passwordLabel.text = secure ? "Secured Password" : "Password"
        
    }
    
    @IBAction func toggleSecurity() {
        secure = !secure
    }
    

}

