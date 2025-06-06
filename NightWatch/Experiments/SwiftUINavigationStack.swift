//
//  SwiftUINavigationStack.swift
//  NightWatch
//
//  Created by Praveen Jangre on 05/06/2025.
//

import SwiftUI

struct SwiftUINavigationStack: View {
    var body: some View {
        
        NavigationStack {
            NavigationLink {
                HStack {
                    Circle()
                    Text("Destination View")
                }
                .navigationTitle(Text("Destination"))
                
            } label: {
                Text("Go to destination")
            }
            .navigationTitle(Text("Home"))

        }
    }
}

#Preview {
    SwiftUINavigationStack()
}
