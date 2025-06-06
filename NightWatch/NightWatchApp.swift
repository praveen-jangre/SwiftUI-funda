//
//  NightWatchApp.swift
//  NightWatch
//
//  Created by Praveen Jangre on 30/05/2025.
//

import SwiftUI

@main
struct NightWatchApp: App {
    @State private var nightWatchViewModel = NightWatchViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView(nightWatchViewModel: self.nightWatchViewModel)
        }
    }
}
