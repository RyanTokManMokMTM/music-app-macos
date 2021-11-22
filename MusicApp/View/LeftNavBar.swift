//
//  LeftNavBar.swift
//  MusicApp
//
//  Created by Jackson on 15/11/2021.
//

import SwiftUI

struct LeftNavBar: View {
    @Binding var leftIndex : Int
    @Binding var leftHoverIndex : Int
    var body: some View {
        LeftNavButton(icon: "music.note", title: "發現音樂",backgroundColor: self.leftIndex == 0 ? Color("Dark2").opacity(0.7) : self.leftHoverIndex == 0 ? Color("Dark2").opacity(0.3) : Color.clear,selectedColor: self.leftIndex == 0 ? Color.red : Color.white.opacity(0.65)){
            self.leftIndex = 0
        }
        .onHover(perform: { hovering in
            if hovering{
                self.leftHoverIndex = 0
            }else{
                self.leftHoverIndex = -1
            }
        })
        
        LeftNavButton(icon: "dot.radiowaves.left.and.right", title: "私人FM",backgroundColor: self.leftIndex == 1 ? Color("Dark2").opacity(0.7) : self.leftHoverIndex == 1 ? Color("Dark2").opacity(0.3) : Color.clear,selectedColor: self.leftIndex == 1 ? Color.red : Color.white.opacity(0.65)){
            self.leftIndex = 1
        }
        .onHover(perform: { hovering in
            if hovering{
                self.leftHoverIndex = 1
            }else{
                self.leftHoverIndex = -1
            }
        })
        
        LeftNavButton(icon: "play.rectangle", title: "視頻",backgroundColor: self.leftIndex == 2 ? Color("Dark2").opacity(0.7) : self.leftHoverIndex == 2 ? Color("Dark2").opacity(0.3) : Color.clear,selectedColor: self.leftIndex == 2 ? Color.red : Color.white.opacity(0.65)){
            self.leftIndex = 2
        }
        .onHover(perform: { hovering in
            if hovering{
                self.leftHoverIndex = 2
            }else{
                self.leftHoverIndex = -1
            }
        })
        
        LeftNavButton(icon: "person.2", title: "朋友",backgroundColor: self.leftIndex == 3 ? Color("Dark2").opacity(0.7) : self.leftHoverIndex == 3 ? Color("Dark2").opacity(0.3) : Color.clear,selectedColor: self.leftIndex == 3 ? Color.red : Color.white.opacity(0.65)){
            self.leftIndex = 3
        }
        .onHover(perform: { hovering in
            if hovering{
                self.leftHoverIndex = 3
            }else{
                self.leftHoverIndex = -1
            }
        })
        
        Group{
            Text("我的音樂")
                .font(.body)
                .foregroundColor(.gray)
                .padding(.horizontal)
                .padding(.vertical,8)
            
            LeftNavButton(icon: "music.note.list", title: "iTunes音樂",backgroundColor: self.leftIndex == 4 ? Color("Dark2").opacity(0.7) : self.leftHoverIndex == 4 ? Color("Dark2").opacity(0.3) : Color.clear,selectedColor: self.leftIndex == 4 ? Color.red : Color.white.opacity(0.65)){
                self.leftIndex = 4
            }
            .onHover(perform: { hovering in
                if hovering{
                    self.leftHoverIndex = 4
                }else{
                    self.leftHoverIndex = -1
                }
            })
            
            LeftNavButton(icon: "square.and.arrow.down", title: "下載管理",backgroundColor: self.leftIndex == 5 ? Color("Dark2").opacity(0.7) : self.leftHoverIndex == 5 ? Color("Dark2").opacity(0.3) : Color.clear,selectedColor: self.leftIndex == 5 ? Color.red : Color.white.opacity(0.65)){
                self.leftIndex = 5
            }
            .onHover(perform: { hovering in
                if hovering{
                    self.leftHoverIndex = 5
                }else{
                    self.leftHoverIndex = -1
                }
            })
            
            LeftNavButton(icon: "clock.arrow.circlepath", title: "最近播放",backgroundColor: self.leftIndex == 6 ? Color("Dark2").opacity(0.7) : self.leftHoverIndex == 6 ? Color("Dark2").opacity(0.3) : Color.clear,selectedColor: self.leftIndex == 6 ? Color.red : Color.white.opacity(0.65)){
                self.leftIndex = 6
            }
            .onHover(perform: { hovering in
                if hovering{
                    self.leftHoverIndex = 6
                }else{
                    self.leftHoverIndex = -1
                }
            })
        }
        
        Group{
            HStack{
                Text("建立新的歌單")
                    .font(.body)
                    .foregroundColor(.gray)
                    .padding(.horizontal)
                    .padding(.vertical,8)
                Spacer()
                Image(systemName: "plus")
                    .padding(.trailing,8)
            }
            
                LeftNavButton(icon: "heart", title: "我喜歡的音樂",backgroundColor: self.leftIndex == 7 ? Color("Dark2").opacity(0.7) : self.leftHoverIndex == 7 ? Color("Dark2").opacity(0.3) : Color.clear,selectedColor: self.leftIndex == 7 ? Color.red : Color.white.opacity(0.65)){
                    self.leftIndex = 7
                }
                .onHover(perform: { hovering in
                    if hovering{
                        self.leftHoverIndex = 7
                    }else{
                        self.leftHoverIndex = -1
                    }
                })
                
            

        }
    }
}

//struct LeftNavBar_Previews: PreviewProvider {
//    static var previews: some View {
//        LeftNavBar()
//    }
//}
