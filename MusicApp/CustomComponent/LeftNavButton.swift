//
//  LeftNavButton.swift
//  MusicApp
//
//  Created by Jackson on 15/11/2021.
//

import SwiftUI

struct LeftNavButton: View {
    var icon : String
    var title : String
    var backgroundColor : Color = Color.clear
    var selectedColor : Color = Color.white

    var action:()->()
    var body: some View {
        Button(action:action){
            HStack{
                Image(systemName: icon)
                    .font(.system(size: 14))
                Text(title)
                    .font(.system(size: 14))
            
                Spacer()
            }
            .foregroundColor(selectedColor)
        }
        .buttonStyle(PlainButtonStyle())
        .padding(.horizontal)
        .padding(.vertical,8)
        .frame(maxWidth:.infinity)
        .background(backgroundColor)
    }
}

struct LeftNavButton_Previews: PreviewProvider {
    static var previews: some View {
        LeftNavButton(icon: "plain", title: "testing"){}
    }
}
