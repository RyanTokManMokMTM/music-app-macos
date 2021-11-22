//
//  TopNavButton.swift
//  MusicApp
//
//  Created by Jackson on 15/11/2021.
//

import SwiftUI

struct TopNavButton: View {
    var textColor =  Color.gray
    var btuTitle : String
    var action : ()->()
    var body: some View {
        Button(action:action){
            Text(btuTitle)
                .bold()
                .font(.system(size: 14))
                .foregroundColor(textColor)
//                .foregroundColor(self.selectedIndex == 0 ? Color.white : self.hoveringIndex == 0 ? Color.white.opacity(0.8) : Color.gray)
        }
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
