//
//  MyTip.swift
//  TipKitSample
//
//  Created by YD on 8/2/23.
//

import TipKit

public struct MyTip: Tip {
    
    public var title: Text {
        return Text("title")
    }
    
    public var message: Text? {
        return Text("message")
    }
    
    public var asset: Image? {
        return Image(systemName: "star")
    }
}
