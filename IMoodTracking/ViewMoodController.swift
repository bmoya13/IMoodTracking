//
//  ViewMoodController.swift
//  IMoodTracking
//
//  Created by Skai Fu on 12/1/21.
//

import UIKit

class ViewMoodController: UIViewController {
    
    var count = UserDefaults.standard.integer(forKey: "logCounter")
    
    func getMood(index: Int) -> String {
        var output = ""

        switch index {
        case 1:
            do {
                let moodLog = try UserDefaults.standard.getObject(forKey: String(count) + "Mood", castTo: Mood.self)
                output = moodLog.mood + "    -    " + moodLog.time
                
            } catch {
                print(error.localizedDescription)
            }
            
        case 2:
            do {
                let moodLog = try UserDefaults.standard.getObject(forKey: String(count - 1) + "Mood", castTo: Mood.self)
                output = moodLog.mood + "    -    " + moodLog.time
                
            } catch {
                print(error.localizedDescription)
            }
            
        case 3:
            do {
                let moodLog = try UserDefaults.standard.getObject(forKey: String(count - 2) + "Mood", castTo: Mood.self)
                output = moodLog.mood + "    -    " + moodLog.time
                
            } catch {
                print(error.localizedDescription)
            }
            
        case 4:
            do {
                let moodLog = try UserDefaults.standard.getObject(forKey: String(count - 3) + "Mood", castTo: Mood.self)
                output = moodLog.mood + "    -    " + moodLog.time
                
            } catch {
                print(error.localizedDescription)
            }
            
        case 5:
            do {
                let moodLog = try UserDefaults.standard.getObject(forKey: String(count - 4) + "Mood", castTo: Mood.self)
                output = moodLog.mood + "    -    " + moodLog.time
                
            } catch {
                print(error.localizedDescription)
            }
            
            
        case 6:
            do {
                let moodLog = try UserDefaults.standard.getObject(forKey: String(count - 5) + "Mood", castTo: Mood.self)
                output = moodLog.mood + "    -    " + moodLog.time
                
            } catch {
                print(error.localizedDescription)
            }
            
        case 7:
            do {
                let moodLog = try UserDefaults.standard.getObject(forKey: String(count - 6) + "Mood", castTo: Mood.self)
                output = moodLog.mood + "    -    " + moodLog.time
                
            } catch {
                print(error.localizedDescription)
            }
        
        case 8:
            do {
                let moodLog = try UserDefaults.standard.getObject(forKey: String(count - 7) + "Mood", castTo: Mood.self)
                output = moodLog.mood + "    -    " + moodLog.time
                
            } catch {
                print(error.localizedDescription)
            }
            
        case 9:
            do {
                let moodLog = try UserDefaults.standard.getObject(forKey: String(count - 8) + "Mood", castTo: Mood.self)
                output = moodLog.mood + "    -    " + moodLog.time
                
            } catch {
                print(error.localizedDescription)
            }
            
        case 10:
            do {
                let moodLog = try UserDefaults.standard.getObject(forKey: String(count - 9) + "Mood", castTo: Mood.self)
                output = moodLog.mood + "    -    " + moodLog.time
                
            } catch {
                print(error.localizedDescription)
            }
            
        default:
            print("N/A")
        }   // end switch
        
        return output
    }   // end getMood
    
    
    @IBOutlet var mood1: UILabel!
    @IBOutlet var mood2: UILabel!
    @IBOutlet var mood3: UILabel!
    @IBOutlet var mood4: UILabel!
    @IBOutlet var mood5: UILabel!
    @IBOutlet var mood6: UILabel!
    @IBOutlet var mood7: UILabel!
    @IBOutlet var mood8: UILabel!
    @IBOutlet var mood9: UILabel!
    @IBOutlet var mood10: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.mood1.text = getMood(index: 1)
        self.mood2.text = getMood(index: 2)
        self.mood3.text = getMood(index: 3)
        self.mood4.text = getMood(index: 4)
        self.mood5.text = getMood(index: 5)
        self.mood6.text = getMood(index: 6)
        self.mood7.text = getMood(index: 7)
        self.mood8.text = getMood(index: 8)
        self.mood9.text = getMood(index: 9)
        self.mood10.text = getMood(index: 10)
        //and continue on until mood10
        print("View mood view has loaded :)")
        
    }
    
    


}
