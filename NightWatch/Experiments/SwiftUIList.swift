//
//  SwiftUIList.swift
//  NightWatch
//
//  Created by Praveen Jangre on 05/06/2025.
//

import SwiftUI

struct SwiftUIList: View {
    var body: some View {
        List {
            Text("Check all windows.")
            Text("Check all doors.")
            Text("Check that the safe is locked.")
            Text("Check the mailbox.")
            Text("Inspect security cameras.")
            Text("Clear ice from the sidewalks")
            Text("Document \"strange and unusual\" occurances.")
        }
    }
}

#Preview {
    SwiftUIList()
}
