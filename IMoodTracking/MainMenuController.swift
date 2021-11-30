//
//  ViewController.swift
//  IMoodTracking
//
//  Created by bmoya1301 on 11/29/21.
//

import UIKit

class MainMenuController: UIViewController {
    @IBAction func getStartedPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "mainMenuSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

