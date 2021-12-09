# IMood: A Mood Tracking iOS App!
iOS app used for mood tracking of the user based on inputs, created in XCode with the Swift language.

In this modern age, Individuals often do not take the time to reflect on their day and their feelings throughout it.
This could potentially assist in identifying external factors that are impacting their mood.
It can also help identify mood swings and behavioral patterns in the past days.

Our solution? Create an accessible Mood Tracker iOS App with Swift!

## How to Start
Since this is an iOS app created in XCode, in order to get it running and test features out:

1. Access to a device with MacOS or a Virtual Machine set up with a MacOS emulator

2. Download XCode (Project was made on Version 12.5.1)

3. Once XCode is setup, clone/download this repository/files and open the project

4. Run with IPhone simulator given in XCode, any device version should be fine

5. Enjoy your mood logging adventure in simulator form!

## Main Features

### Log Mood

From the main menu, users can choose to input their mood at any time of day.
They are given 5 options to choose from: Amazing, Good, So-So, Bad, or Horrible.
Pressing one of these buttons will save the choice data as well as a timestamp to know when the button was pressed.
This information will be avaiable for the user to see, saved to the app, in the next feature.

### View Log

Choosing this option on the main menu allows the user to view a log of their recently entered moods and a timestamp.
This log will show the last 10 entries to the mood tracker. Once the user enters more, the new entries replace the oldest ones.
Since these are stored as UserDefaults, the mood entries will be stored and saved upon startup.

### Set Waking Hours

In this feature, users can set the time they wake up in the morning as well as the time they head to bed. These values
will be saved and used to send notifications to log their mood throughout the day. At least 5 notifications will be sent 
throughout the day for reminders. Their waking hours can be changed at any time.

### Mood Improvement Tips

Finally, this feature allows the user to view a quick Mood Improvement Tip, or general life tips, at any time. The tip
given will be from a randomized choice of 15 from a switch statement, all of which are aimed at motivating the user throughout
the day. Each time the slide is closed and opened again, the tip presented will be changed.
