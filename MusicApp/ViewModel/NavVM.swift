//
//  NavVM.swift
//  MusicApp
//
//  Created by Jackson on 15/11/2021.
//

import Foundation
import SwiftUI

class NarVM : ObservableObject{
    @Published var index : Int = 0
    @Published var hovingIndex : Int = -1
    
    init(){
        
    }
}
