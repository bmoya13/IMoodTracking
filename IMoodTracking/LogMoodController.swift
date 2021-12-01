//
//  ViewController.swift
//  IMoodTracking
//
//  Created by bmoya1301 on 11/29/21.
//

import UIKit


class Mood {
    var mood: String
    var time: String
    
    init(moodInput: String, timeInput: String)
    {
        mood = moodInput
        time = timeInput
    }
}   // end Mood class

class LogMoodController: UIViewController {

    @IBAction func amazingButtonPressed(_ sender: Any) {
        print("Test")
        
        let timeofUse = getDate()
        var moodLog = Mood(moodInput: "Happy", timeInput: timeofUse)
        print(moodLog.mood + ", " + moodLog.time)
        
        let str = moodLog.mood + "," + moodLog.time
        
        writeToFile(input: str) // call function to write to file
        
    }
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
    }   // end getDate
    
    func writeToFile(input: String) {
        
        //let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        //let fileURL = URL(fileURLWithPath: "moodDatebase", relativeTo: path).appendingPathExtension("txt")
        
        let fileURL = Bundle.main.url(forResource: "moodDatabase", withExtension: "txt")!
        do {
            if let fileUpdater = try? FileHandle(forUpdating: fileURL) {
                      fileUpdater.seekToEndOfFile()
                      fileUpdater.write(input.data(using: .utf8)!)
                      fileUpdater.closeFile()
                }
            
            //try str.write(toFile: filePath, atomically: true, encoding: String.Encoding.utf8)
            print("File saved")
        }
    } // end writeToFile
    
}

