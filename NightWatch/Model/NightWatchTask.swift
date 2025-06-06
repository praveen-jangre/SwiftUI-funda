//
//  NightWatchTask.swift
//  NightWatch
//
//  Created by Praveen Jangre on 05/06/2025.
//

import Foundation

struct NightWatchTask: Identifiable {
    let id = UUID()
    let name: String
    var isComplete: Bool
    var lastCompleted: Date?
}
