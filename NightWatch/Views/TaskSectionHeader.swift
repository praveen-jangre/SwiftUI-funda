//
//  TaskSectionHeader.swift
//  NightWatch
//
//  Created by Praveen Jangre on 05/06/2025.
//

import SwiftUI

struct TaskSectionHeader: View {
    let symbolSystemName: String
    let headerText: String
    
    var body: some View {
        Text("\(Image(systemName: symbolSystemName)) \(headerText)")
            .headerStyle()
    }
}

#Preview {
    TaskSectionHeader(symbolSystemName:"sunset", headerText: "Weekly Tasks")
}
