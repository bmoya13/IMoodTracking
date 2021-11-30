//
//  TipScreenController.swift
//  IMoodTracking
//
//  Created by Skai Fu on 11/29/21.
//
import UIKit

class TipScreenController: UIViewController {
    
    @IBOutlet var tipText: UILabel!
    @IBOutlet var tipNumber: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        generateTip()
        
        func generateTip() {
            let tipNumber = Int.random(in: 1...15)
            
            switch tipNumber {
            case 1:
                self.tipText.text = "Don't swallow more than you can chew"
                self.tipNumber.text = "01"
                
            case 2:
                self.tipText.text = "Be thankful for what you have; you'll end up having more. If you concentrate on what you don't have, you will never, ever have enough."
                self.tipNumber.text = "02"
                
            case 3:
                self.tipText.text = "I decided I can’t pay a person to rewind time, so I may as well get over it."
                self.tipNumber.text = "03"
                
            case 4:
                self.tipText.text = "Mistakes are a fact of life. It is the response to the error that counts."
                self.tipNumber.text = "04"
                
            case 5:
                self.tipText.text = "Life is not so much what you accomplish as what you overcome."
                self.tipNumber.text = "05"
            
            case 6:
                self.tipText.text = "If you feel like there’s something out there that you’re supposed to be doing, if you have a passion for it, then stop wishing and just do it."
                self.tipNumber.text = "06"
            case 7:
                self.tipText.text = "If you don't like the road you're walking, start paving another one."
                self.tipNumber.text = "07"
            case 8:
                self.tipText.text = "The most beautiful things in the world cannot be seen or even touched. They must be felt with the heart."
                self.tipNumber.text = "08"
            case 9:
                self.tipText.text = "To succeed in life, you need three things: a wishbone, a backbone, and a funny bone."
                self.tipNumber.text = "09"
            case 10:
                self.tipText.text = "It's not what we have in life but who we have in our life that matters."
                self.tipNumber.text = "10"
            case 11:
                self.tipText.text = "Every day may not be good, but there is something good in every day."
                self.tipNumber.text = "11"
            case 12:
                self.tipText.text = "Sometimes you will never know the value of a moment until it becomes a memory."
                self.tipNumber.text = "12"
            case 13:
                self.tipText.text = "Difficult roads often lead to beautiful destinations."
                self.tipNumber.text = "13"
            case 14:
                self.tipText.text = "You can't go back and change the beginning, but you can start where you are and change the ending."
                self.tipNumber.text = "14"
            case 15:
                self.tipText.text = "Small steps in the right direction can turn out to be the biggest step of your life."
                self.tipNumber.text = "15"
                
                
            default: break
        }
    }
    
        
        
}
    
    
}
