//
//  SwiftUIView.swift
//  NightWatch
//
//  Created by Praveen Jangre on 05/06/2025.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack {
            Circle()
            Rectangle()
            HStack {
                RoundedRectangle(cornerRadius: 20.0)
                Text("The Experiment world.")
            }
        }
    }
}

#Preview {
    SwiftUIView()
}

struct SwiftUIView_Preview: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
