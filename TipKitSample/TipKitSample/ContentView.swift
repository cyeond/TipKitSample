//
//  ContentView.swift
//  TipKitSample
//
//  Created by YD on 7/21/23.
//

import SwiftUI
import TipKit

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            Text("TipKit Sample")
            Spacer()
            Button {
                
            } label: {
                Text("Donate Event")
            }
            .padding(.bottom, 200.0)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
