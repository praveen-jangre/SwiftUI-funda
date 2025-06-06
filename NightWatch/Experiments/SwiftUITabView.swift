//
//  SwiftUITabView.swift
//  NightWatch
//
//  Created by Praveen Jangre on 05/06/2025.
//

import SwiftUI

struct SwiftUITabView: View {
    var body: some View {
        TabView() {
            HomeView()
            MapView()
            SettingsView()
        }
    }
}

#Preview {
    SwiftUITabView()
}






