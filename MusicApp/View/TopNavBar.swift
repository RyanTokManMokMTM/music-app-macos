//
//  TopNavBar.swift
//  MusicApp
//
//  Created by Jackson on 15/11/2021.
//

import SwiftUI

struct TopNavBar: View {
    @Binding var index : Int
    @Binding var hoverIndex : Int
    var body: some View {
        TopNavButton(textColor: self.index == 0 ? Color.white : self.hoverIndex == 0 ? Color.white.opacity(0.8) : Color.gray, btuTitle: "個性推薦"){
            withAnimation{
                self.index = 0
            }
        }
        .onHover(perform: { hovering in
            print(hovering)
            if hovering{
                self.hoverIndex = 0
            }else{
                self.hoverIndex = -1
            }
        })
        
        TopNavButton(textColor: self.index == 1 ? Color.white : self.hoverIndex == 1 ? Color.white.opacity(0.8) : Color.gray, btuTitle: "歌單"){
            withAnimation{
                self.index = 1
            }
        }
        .onHover(perform: { hovering in
            if hovering{
                self.hoverIndex = 1
            }else{
                self.hoverIndex = -1
            }
        })
        
        TopNavButton(textColor: self.index == 2 ? Color.white : self.hoverIndex == 2 ? Color.white.opacity(0.8) : Color.gray, btuTitle: "主播電台"){
            withAnimation{
                self.index = 2
            }
        }
        .onHover(perform: { hovering in
            if hovering{
                self.hoverIndex = 2
            }else{
                self.hoverIndex = -1
            }
        })
        
        TopNavButton(textColor: self.index == 3 ? Color.white : self.hoverIndex == 3 ? Color.white.opacity(0.8) : Color.gray, btuTitle: "排行榜"){
            withAnimation{
                self.index = 3
            }
        }
        .onHover(perform: { hovering in
            if hovering{
                self.hoverIndex = 3
            }else{
                self.hoverIndex = -1
            }
        })
        
        TopNavButton(textColor: self.index == 4 ? Color.white : self.hoverIndex == 4 ? Color.white.opacity(0.8) : Color.gray, btuTitle: "歌手"){
            withAnimation{
                self.index = 4
            }
        }
        .onHover(perform: { hovering in
            if hovering{
                self.hoverIndex = 4
            }else{
                self.hoverIndex = -1
            }
        })
        
        TopNavButton(textColor: self.index == 5 ? Color.white : self.hoverIndex == 5 ? Color.white.opacity(0.8) : Color.gray, btuTitle: "最新音樂"){
            withAnimation{
                self.index = 5
            }
        }
        .onHover(perform: { hovering in
            if hovering{
                self.hoverIndex = 5
            }else{
                self.hoverIndex = -1
            }
        })
    }
}

//struct TopNavBar_Previews: PreviewProvider {
//    static var previews: some View {
//        TopNavBar()
//    }
//}
