//
//  HomeView.swift
//  NightWatch
//
//  Created by Praveen Jangre on 05/06/2025.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        Text("Home view content here")
            .tabItem {
                Image(systemName: "house")
                Text("Home") }.tag(1)
    }
}

#Preview {
    HomeView()
}
