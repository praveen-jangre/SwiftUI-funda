//
//  TaskView.swift
//  NightWatch
//
//  Created by Praveen Jangre on 06/06/2025.
//

import SwiftUI

struct TaskView: View {
    let task: NightWatchTask
    var body: some View {
        VStack {
            if task.isComplete {
                HStack {
                    Image(systemName: "checkmark.square")
                    Text(task.name)
                        .foregroundStyle(.gray)
                        .strikethrough()
                }
            } else {
                HStack {
                    Image(systemName: "square")
                    Text(task.name)
                }
            }
        }
    }
}

#Preview {
    TaskView(task: NightWatchTask(name: "Test task", isComplete: false))
}
