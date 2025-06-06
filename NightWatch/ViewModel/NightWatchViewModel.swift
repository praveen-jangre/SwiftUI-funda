//
//  NightWatchViewModel.swift
//  NightWatch
//
//  Created by Praveen Jangre on 06/06/2025.
//

import Foundation

@Observable
class NightWatchViewModel {
    var nightlyTasks = [
        NightWatchTask(name: "Check all windows.", isComplete: false),
        NightWatchTask(name: "Check that the safe is locked.", isComplete: false),
        NightWatchTask(name: "Check the mailbox.", isComplete: false),
        NightWatchTask(name: "Inspect security cameras.", isComplete: false),
        NightWatchTask(name: "Clear ice from the sidewalks.", isComplete: false),
        NightWatchTask(name: "Document \"strange and unusual\" occurances.", isComplete: false)
    ]

    var weeklyTasks =
    [NightWatchTask(name: "Check inside all vacant rooms.", isComplete: false),
     NightWatchTask(name: "Walk the perimeter of property.", isComplete: false)
        
    ]

    var monthlyTasks = [
        NightWatchTask(name: "Test security alarms.", isComplete: false),
        NightWatchTask(name: "Test motion detectors.", isComplete: false),
        NightWatchTask(name: "Test smoke alarms.", isComplete: false)
    ]
}
