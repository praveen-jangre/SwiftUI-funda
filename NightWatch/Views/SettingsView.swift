//
//  SettingsView.swift
//  NightWatch
//
//  Created by Praveen Jangre on 05/06/2025.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        Text("Setting view content here").tabItem {
            Image(systemName: "gear")
            Text("Settings") }.tag(3)
    }
}

#Preview {
    SettingsView()
}
