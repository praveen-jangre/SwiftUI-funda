//
//  MapView.swift
//  NightWatch
//
//  Created by Praveen Jangre on 05/06/2025.
//

import SwiftUI

struct MapView: View {
    var body: some View {
        Text("Map view content here")
            .tabItem {
                Image(systemName: "map")
                Text("Map") }.tag(2)
    }
}

#Preview {
    MapView()
}
