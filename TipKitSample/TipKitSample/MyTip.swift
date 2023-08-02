//
//  MyTip.swift
//  TipKitSample
//
//  Created by YD on 8/2/23.
//

import TipKit

public struct MyTip: Tip {
    
    static let myDonationEvent: Event = Event<Tips.EmptyDonation>(
        id: "my-donation-event"
    )

    
    public var title: Text {
        return Text("title")
    }
    
    public var message: Text? {
        return Text("message")
    }
    
    public var asset: Image? {
        return Image(systemName: "star")
    }
    
    public var actions: [Action] {
        [
            Action(
                id: "action-id",
                title: "action title"
            )
        ]
    }
    
    public var rules: [Rule] {
        [
            #Rule(Self.myDonationEvent) { $0.donations.count > 0 }
        ]
    }
}
