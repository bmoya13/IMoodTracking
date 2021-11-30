//
//  ViewController.swift
//  IMoodTracking
//
//  Created by bmoya1301 on 11/29/21.
//

import UIKit

class MainMenuController: UIViewController {
    
    @IBAction func logMoodButton(_ sender: Any) {
        
        self.performSegue(withIdentifier: "logMoodSegue", sender: self)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

