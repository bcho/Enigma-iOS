//
//  EnigmaViewController.swift
//  Enigma
//
//  Created by hbc on 2/23/16.
//  Copyright © 2016 hbc. All rights reserved.
//

import UIKit
import CryptoSwift
import JLToast

class EnigmaViewController: UIViewController, UITextFieldDelegate {
    
    var MASTER = "MASTER_PASSWORD"
    
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var site: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        site.delegate = self
        site.becomeFirstResponder()
        
        site.addTarget(self, action: "siteChanged:", forControlEvents: UIControlEvents.EditingChanged)
        site.addTarget(self, action: "copyPassword:", forControlEvents: UIControlEvents.EditingDidEndOnExit)
    }
    
    func siteChanged(field: UITextField) {
        if site.text! != "" {
            let hashed = (site.text! + MASTER).sha1()
            let end = hashed.startIndex.advancedBy(10)
            password.text = hashed.substringToIndex(end)
        } else {
            password.text = nil
        }
    }
    
    func copyPassword(field: UITextField) {
        UIPasteboard.generalPasteboard().string = password.text!
        JLToast.makeText("Copied!").show()
    }
    
}

