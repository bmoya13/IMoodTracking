//
//  ViewController.swift
//  IMoodTracking
//
//  Created by bmoya1301 on 11/29/21.
//

import UIKit

class MainMenuController: UIViewController {
    
    @IBAction func wakingHoursButton(_ sender: Any) {
        self.performSegue(withIdentifier: "wakingHoursSegue", sender: self)
    }
    
    @IBAction func logMoodButton(_ sender: Any) {
        
        self.performSegue(withIdentifier: "logMoodSegue", sender: self)
    }
    
    @IBAction func tipScreenButton(_ sender: Any) {
        
        self.performSegue(withIdentifier: "tipScreenSegue", sender: self)
    }
    
    @IBAction func viewMoodButton(_ sender: Any) {
        self.performSegue(withIdentifier: "viewMoodSegue", sender: self)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

