//
//  ContentView.swift
//  TipKitSample
//
//  Created by YD on 7/21/23.
//

import SwiftUI
import TipKit

struct ContentView: View {
    private let myTip: MyTip
    
    init() {
        self.myTip = MyTip()
        
        Task {
            try? await Tips.configure()
        }
    }
    
    var body: some View {
        VStack(spacing: 0) {
            Text("TipKit Sample")
                .popoverTip(myTip)
            Spacer()
            Button {
                MyTip.myDonationEvent.donate()
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
