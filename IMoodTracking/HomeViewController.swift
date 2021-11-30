//
//  ViewController.swift
//  IMoodTracking
//
//  Created by bmoya1301 on 11/29/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBAction func getStartedButton(_ sender: Any) {
        
        self.performSegue(withIdentifier: "mainMenuSegue", sender: self)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("View has loaded :)")
        
    }
    
    


}

