//
//  EnigmaViewController.swift
//  Enigma
//
//  Created by hbc on 2/23/16.
//  Copyright © 2016 hbc. All rights reserved.
//

import UIKit

class EnigmaViewController: UIViewController {
    
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var site: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        site.addTarget(self, action: "siteChanged:", forControlEvents: UIControlEvents.EditingChanged)
        site.addTarget(self, action: "copyPassword:", forControlEvents: UIControlEvents.EditingDidEndOnExit)
    }
    
    func siteChanged(field: UITextField) {
        password.text = site.text!
    }
    
    func copyPassword(field: UITextField) {
        UIPasteboard.generalPasteboard().string = password.text!
        print("copied!")
    }
    
}

