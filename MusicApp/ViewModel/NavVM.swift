//
//  NavVM.swift
//  MusicApp
//
//  Created by Jackson on 15/11/2021.
//

import Foundation
import SwiftUI

//enum NavTab : String{
//    case Recommand = "個性推薦"
//    case List = "歌單"
//    case PotCast = "主播電台"
//    case Rank = "排行榜"
//    case Singer = ""
//}


class NavModel : ObservableObject{
    @Published var index : Int = 0 // Which tab is selected
    @Published var hovingIndex : Int = -1 //Which tab is hovering
    
    init(){
    }
}
