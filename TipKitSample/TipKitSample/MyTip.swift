//
//  MyTip.swift
//  TipKitSample
//
//  Created by YD on 8/2/23.
//

import TipKit

struct MyTip: Tip {
    
    static let myDonationEvent: Event = Event<Tips.EmptyDonation>(
        id: "my-donation-event"
    )

    
    var title: Text {
        return Text("title")
    }
    
    var message: Text? {
        return Text("message")
    }
    
    var asset: Image? {
        return Image(systemName: "star")
    }
    
    var actions: [Action] {
        [
            Action(
                id: "action-id",
                title: "action title"
            )
        ]
    }
    
    var rules: [Rule] {
        [
            #Rule(Self.myDonationEvent) { $0.donations.count == 0 }
        ]
    }
    
    var options: [TipOption] {
        [
            Tips.MaxDisplayCount(5)
        ]
    }
}
