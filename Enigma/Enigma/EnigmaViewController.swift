//
//  EnigmaViewController.swift
//  Enigma
//
//  Created by hbc on 2/23/16.
//  Copyright © 2016 hbc. All rights reserved.
//

import UIKit

class EnigmaViewController: UIViewController {
    
    @IBOutlet weak var site: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        site.addTarget(self, action: "siteChanged:", forControlEvents: UIControlEvents.EditingChanged)
    }
    
    func siteChanged(field: UITextField) {
        print(field.text!)
    }

}

