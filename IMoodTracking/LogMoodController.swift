//
//  ViewController.swift
//  IMoodTracking
//
//  Created by bmoya1301 on 11/29/21.
//

import UIKit


struct Mood: Codable {
    var mood: String
    var time: String
    static var numOfLogs: Int = 0
    
    init(moodInput: String, timeInput: String)
    {
        mood = moodInput
        time = timeInput
        
    }
    
    static func incrementLogs() {
        numOfLogs = numOfLogs + 1
    }
    
    static func getLogCount() -> Int {
        return numOfLogs
    }
    
}   // end Mood struct
class LogMoodController: UIViewController {

    @IBAction func amazingButtonPressed(_ sender: Any) {
        Mood.incrementLogs()
        saveCounter()
        createMoodLog(description: "Amazing")
        
        print(Mood.getLogCount())
        
    }   // end amazingButtonPressed
    
    @IBAction func goodButtonPressed(_ sender: Any) {
        Mood.incrementLogs()
        saveCounter()
        createMoodLog(description: "Good")
        
        print(Mood.getLogCount())
        
    }   // end goodButtonPressed
    
    @IBAction func SoSoButtonPressed(_ sender: Any) {
        Mood.incrementLogs()
        saveCounter()
        createMoodLog(description: "So-so")
        
        print(Mood.getLogCount())
    }   // end SoSoButtonPressed
    
    @IBAction func mehButtonPressed(_ sender: Any) {
        Mood.incrementLogs()
        saveCounter()
        createMoodLog(description: "Meh")
        
        print(Mood.getLogCount())
    }   // end mehButtonPressed
    
    
    @IBAction func horribleButtonPressed(_ sender: Any) {
        Mood.incrementLogs()
        saveCounter()
        createMoodLog(description: "Horrible")
        
        print(Mood.getLogCount())
    }   // end horribleButtonPressed
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    func getDate() -> String {
        let date = Date()
        let format = DateFormatter()
        format.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let formattedDate = format.string(from: date)
        return formattedDate
    }   // end getDate function
    
    func saveCounter() {
        do {
            try UserDefaults.standard.set(Mood.getLogCount(), forKey: "logCounter")
        } catch {
            print(error.localizedDescription)
        }
    } // end saveCounter function
    
    func createMoodLog(description: String) {
        
        let mood = Mood(moodInput: description, timeInput: getDate())
        
        
        do {
            try UserDefaults.standard.setObject(mood, forKey: String(Mood.getLogCount()) + "Mood")
        } catch {
            print(error.localizedDescription)
        }
        do {
            let mood = try UserDefaults.standard.getObject(forKey: String(Mood.getLogCount()) + "Mood", castTo: Mood.self)
            print(mood)
        } catch {
            print(error.localizedDescription)
        }
        
    }   // end createMoodLog function
    
}

