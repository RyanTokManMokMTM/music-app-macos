//
//  MusicAppApp.swift
//  MusicApp
//
//  Created by Jackson on 14/11/2021.
//

import SwiftUI

@main
struct MusicAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .ignoresSafeArea(.all, edges: .all)
        }
        .windowStyle(HiddenTitleBarWindowStyle())
        
    }
}
