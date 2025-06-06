//
//  MarkCompleteExperiment.swift
//  NightWatch
//
//  Created by Praveen Jangre on 05/06/2025.
//

import SwiftUI

@Observable
class NightWatchTaskExperiment {
    let name: String
    var isComplete: Bool
    var lastCompleted: Date?
    
    init(name: String, isComplete: Bool, lastCompleted: Date? = nil) {
        self.name = name
        self.isComplete = isComplete
        self.lastCompleted = lastCompleted
    }
}

struct MarkCompleteExperiment: View {
    private var theTaskName = NightWatchTaskExperiment(name: "Check all windows", isComplete: false)
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: theTaskName.isComplete ? "checkmark.square" : "square")
                Text(theTaskName.name)
            }
            IntermediateSubview1(theTaskName: self.theTaskName)

        }
        
    }
}

struct IntermediateSubview1: View {
    var theTaskName: NightWatchTaskExperiment
    var body: some View {
        IntermediateSubview2(theTaskName: self.theTaskName)
    }
}
struct IntermediateSubview2: View {
    var theTaskName: NightWatchTaskExperiment
    var body: some View {
        IntermediateSubview3(theTaskName: self.theTaskName)
    }
}
struct IntermediateSubview3: View {
    var theTaskName: NightWatchTaskExperiment
    var body: some View {
        IntermediateSubview4(theTaskName: self.theTaskName)
    }
}
struct IntermediateSubview4: View {
    var theTaskName: NightWatchTaskExperiment
    var body: some View {
        IntermediateSubview5(theTaskName: self.theTaskName)
    }
}
struct IntermediateSubview5: View {
    var theTaskName: NightWatchTaskExperiment
    var body: some View {
        ControlPanel(theTaskName: self.theTaskName)
    }
}

struct ControlPanel: View {
  
    @Bindable var theTaskName: NightWatchTaskExperiment
    var body: some View {
//        HStack {
//            if theTaskName.isComplete == false {
//                Button("Mark Complete") {
//                    theTaskName.isComplete = true
//                }
//            } else {
//                Button("Reset") {
//                    theTaskName.isComplete = false
//                }
//            }
//        }
        Toggle(isOn: self.$theTaskName.isComplete) {
            Text("Task Complete")
        }
    }
}

#Preview {
    MarkCompleteExperiment()
}


