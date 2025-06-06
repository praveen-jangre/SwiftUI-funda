//
//  DetailView.swift
//  NightWatch
//
//  Created by Praveen Jangre on 05/06/2025.
//

import SwiftUI

struct DetailView: View {
    @Binding var task: NightWatchTask
    
    var body: some View {
            VStack {
                Text(task.name)
                Image("floorPlan")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Button {
                    task.isComplete = true
                } label: {
                    Text("Mark Complete")
                }

            }
    }
}

#Preview {
    DetailView(task: .constant(NightWatchTask(name: "Check inside all vacant rooms.", isComplete: false)))
}
