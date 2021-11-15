//
//  BlurView.swift
//  MusicApp
//
//  Created by Jackson on 14/11/2021.
//

import Foundation
import SwiftUI

struct BlurView : NSViewRepresentable{
    func makeNSView(context: Context) -> NSVisualEffectView {
        let view = NSVisualEffectView()
        view.blendingMode = .behindWindow
        
        return view
    }
    
    func updateNSView(_ nsView: NSVisualEffectView, context: Context) {
        
    }
}
