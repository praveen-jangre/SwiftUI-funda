//
//  SwiftUIGrid.swift
//  NightWatch
//
//  Created by Praveen Jangre on 05/06/2025.
//

import SwiftUI

struct SwiftUIGrid: View {
    let nightlyTasks = [
        "Check all windows.",
        "Check all doors.",
        "Check that the safe is locked.",
        "Check the mailbox.",
        "Inspect security cameras.",
        "Clear ice from the sidewalks.",
        "Document \"strange and unusual\" occurances.",
        "Test security alarms.",
        "Test motion detectors.s",
        "Test smoke alarms"
    ]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: [
                GridItem(.fixed(100)),
                GridItem(.fixed(100)),
                GridItem(.fixed(100))
            ]) {
                ForEach(nightlyTasks, id: \.self) { taskName in
                    Text(taskName)
                }
            }
        }
        ScrollView(.vertical) {
            LazyVGrid(columns: [
                GridItem(.fixed(100)),
                GridItem(.fixed(100)),
                GridItem(.fixed(100))
            ]) {
                ForEach(nightlyTasks, id: \.self) { taskName in
                    Text(taskName)
                }
            }
        }
    }
}

#Preview {
    SwiftUIGrid()
}
