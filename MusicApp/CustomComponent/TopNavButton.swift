//
//  TopNavButton.swift
//  MusicApp
//
//  Created by Jackson on 15/11/2021.
//

import SwiftUI

struct TopNavButton: View {
    @Binding var isHover : bool
    var btuTitle : String
    var action : ()->()
    var body: some View {
        Button(action:action){
            Text(btuTitle)
                .bold()
                .font(.system(size: 14))
                .foregroundColor(self.index == 0 ? Color.white : self.isHover ? Color.white.opacity(0.8) : Color.gray)
        }
        .onHover(perform: { hovering in
//            print(hovering)
//            if hovering{
//                self.hoverIndex = 0
//            }else{
//                self.hoverIndex = -1
//            }
        })
        .buttonStyle(PlainButtonStyle())
        .padding(.horizontal,5)
    }
}
//
//struct TopNavButton_Previews: PreviewProvider {
//    static var previews: some View {
//        TopNavButton()
//    }
//}
