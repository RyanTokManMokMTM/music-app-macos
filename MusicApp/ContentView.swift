//
//  ContentView.swift
//  MusicApp
//
//  Created by Jackson on 14/11/2021.
//

import SwiftUI

struct ContentView: View {
    var screen = NSScreen.main!.visibleFrame
    @State private var index : Int = 0
    @State private var hoverIndex = -1
    var body: some View {
        VStack(spacing:0){
                HStack{
                    HStack{
                        Spacer()
                        HStack{
                            Button(action:{}){
                                Image(systemName: "chevron.left")
                                    .padding(.horizontal,2)
                                    .font(.body)
                                    .foregroundColor( Color.gray.opacity(0.5))
                            }
                            .buttonStyle(PlainButtonStyle())
                            
                            Button(action:{}){
                                Image(systemName: "chevron.right")
                                    .padding(.horizontal,2)
                                    .font(.body)
                                    .foregroundColor( Color.gray.opacity(0.5))
                            }
                            .buttonStyle(PlainButtonStyle())

                        }
                        .padding(.horizontal)
                    }.frame(width: screen.width / 10)
                    
                    Button(action:{
                        withAnimation{
                            self.index = 0
                        }
                    }){
                        Text("個性推薦")
                            .bold()
                            .font(.system(size: 14))
                            .foregroundColor(self.index == 0 ? Color.white : self.hoverIndex == 0 ? Color.white.opacity(0.8) : Color.gray)
                    }
                    .onHover(perform: { hovering in
                        print(hovering)
                        if hovering{
                            self.hoverIndex = 0
                        }else{
                            self.hoverIndex = -1
                        }
                    })
                    .buttonStyle(PlainButtonStyle())
                    .padding(.horizontal,5)
                    
                    Button(action:{
                        withAnimation{
                            self.index = 1
                        }
                    }){
                        Text("歌單")
                            .bold()
                            .font(.system(size: 14))
                            .foregroundColor(self.index == 1 ? Color.white : self.hoverIndex == 1 ? Color.white.opacity(0.8) : Color.gray)
                    }
                    .onHover(perform: { hovering in
                        if hovering{
                            self.hoverIndex = 1
                        }else{
                            self.hoverIndex = -1
                        }
                    })
                    .buttonStyle(PlainButtonStyle())
                    .padding(.horizontal,5)
                    
                    Button(action:{
                        withAnimation{
                            self.index = 2
                        }
                    }){
                        Text("主播電台")
                            .bold()
                            .font(.system(size: 14))
                            .foregroundColor(self.index == 2 ? Color.white : self.hoverIndex == 2 ? Color.white.opacity(0.8) : Color.gray)
                    }
                    .onHover(perform: { hovering in
                        if hovering{
                            self.hoverIndex = 2
                        }else{
                            self.hoverIndex = -1
                        }
                    })
                    .buttonStyle(PlainButtonStyle())
                    .padding(.horizontal,5)
                    
                    Button(action:{
                        withAnimation{
                            self.index = 3
                        }
                    }){
                        Text("排行榜")
                            .bold()
                            .font(.system(size: 14))
                            .foregroundColor(self.index == 3 ? Color.white : self.hoverIndex == 3 ? Color.white.opacity(0.8) : Color.gray)
                    }
                    .onHover(perform: { hovering in
                        if hovering{
                            self.hoverIndex = 3
                        }else{
                            self.hoverIndex = -1
                        }
                    })
                    .buttonStyle(PlainButtonStyle())
                    .padding(.horizontal,5)
                    
                    Button(action:{
                        withAnimation{
                            self.index = 4
                        }
                    }){
                        Text("歌手")
                            .bold()
                            .font(.system(size: 14))
                            .foregroundColor(self.index == 4 ? Color.white : self.hoverIndex == 4 ? Color.white.opacity(0.8) : Color.gray)
                    }
                    .onHover(perform: { hovering in
                        if hovering{
                            self.hoverIndex = 4
                        }else{
                            self.hoverIndex = -1
                        }
                    })
                    .buttonStyle(PlainButtonStyle())
                    .padding(.horizontal,5)
                    
                    Button(action:{
                        self.index = 5
                    }){
                        Text("最新音樂")
                            .bold()
                            .font(.system(size: 14))
                            .foregroundColor(self.index == 5 ? Color.white : self.hoverIndex == 5 ? Color.white.opacity(0.8) : Color.gray)
                    }
                    .onHover(perform: { hovering in
                        if hovering{
                            self.hoverIndex = 5
                        }else{
                            self.hoverIndex = -1
                        }
                    })
                    .buttonStyle(PlainButtonStyle())
                    .padding(.horizontal,5)
                    
                    Spacer()
                    Button(action:{
                        
                    }){
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 18))
                    }
                    .buttonStyle(PlainButtonStyle())
                    .padding(.horizontal,5)
                    
                    Button(action:{
                        
                    }){
                        Image(systemName: "gearshape")
                            .font(.system(size: 18))
                    }
                    .buttonStyle(PlainButtonStyle())
                    

                }
                .padding()
                .frame(maxWidth:.infinity)
                .background(Color("Dark"))
            
            HStack{
                VStack(alignment:.leading,spacing:0){
                    HStack{
                        Image(systemName: "person.crop.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30)
                            
                        Text("未登入")
                            .foregroundColor(.gray)
                            .font(.body)
                        
                        Image(systemName: "arrowtriangle.right.fill")
                            .foregroundColor(.gray)
                            .font(.footnote)
                        
                        Spacer()
                    }
//                    .padding(.leading)
                    .padding(.horizontal)
                    .padding(.vertical,8)
                    .padding(.bottom)
                    
                    
                    Button(action:{
                        
                    }){
                        HStack{
                            Image(systemName: "music.note")
                                .font(.system(size: 14))
                            Text("發現音樂")
                                .font(.system(size: 14))
                            Spacer()
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                    .padding(.horizontal)
                    .padding(.vertical,8)
                    .frame(maxWidth:.infinity)
                    .background(Color("Dark2").opacity(0.7))
                    
                    Button(action:{
                        
                    }){
                        HStack{
                            Image(systemName: "dot.radiowaves.left.and.right")
                                .font(.system(size: 14))
                            Text("私人FM")
                                .font(.system(size: 14))
                            Spacer()
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                    .padding(.horizontal)
                    .padding(.vertical,8)
                    .frame(maxWidth:.infinity)
                    .background(Color.clear)
                    
                    Button(action:{
                        
                    }){
                        HStack{
                            Image(systemName: "play.rectangle")
                                .font(.system(size: 14))
                            Text("視頻")
                                .font(.system(size: 14))
                            Spacer()
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                    .padding(.horizontal)
                    .padding(.vertical,8)
                    .frame(maxWidth:.infinity)
                    .background(Color.clear)
                    
                    Button(action:{
                        
                    }){
                        HStack{
                            Image(systemName: "person.2")
                                .font(.system(size: 14))
                            Text("朋友")
                                .font(.system(size: 14))
                            Spacer()
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                    .padding(.horizontal)
                    .padding(.vertical,8)
                    .frame(maxWidth:.infinity)
                    .background(Color.clear)
                    

                    Text("我的音樂")
                        .font(.body)
                        .foregroundColor(.gray)
                        .padding(.horizontal)
                        .padding(.vertical,8)
                    
                    Button(action:{
                        
                    }){
                        HStack{
                            Image(systemName: "music.note.list")
                                .font(.system(size: 14))
                            Text("iTunes音樂")
                                .font(.system(size: 14))
                            Spacer()
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                    .padding(.horizontal)
                    .padding(.vertical,8)
                    .frame(maxWidth:.infinity)
                    .background(Color.clear)
                    
                    Button(action:{
                        
                    }){
                        HStack{
                            Image(systemName: "square.and.arrow.down")
                                .font(.system(size: 14))
                            Text("下載管理")
                                .font(.system(size: 14))
                            Spacer()
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                    .padding(.horizontal)
                    .padding(.vertical,8)
                    .frame(maxWidth:.infinity)
                    .background(Color.clear)
                    
                    Button(action:{
                        
                    }){
                        HStack{
                            Image(systemName: "clock.arrow.circlepath")
                                .font(.system(size: 14))
                            Text("最近播放")
                                .font(.system(size: 14))
                            Spacer()
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                    .padding(.horizontal)
                    .padding(.vertical,8)
                    .frame(maxWidth:.infinity)
                    .background(Color.clear)

                
                    Spacer()
                }
                .padding(.vertical)
                .frame(maxWidth: screen.width / 10)
                .background(BlurView())
                
                VStack{
                    Text("Comming soon...")
                        .font(.system(size: 36))
                        .foregroundColor(Color.white.opacity(0.5))
                }
                .frame(maxWidth:.infinity)
            
            
            

               

            }
            
//            Spacer()
            HStack{
                Spacer()
                Group{
                    Button(action:{}){
                        Image(systemName: "arrow.backward")
                            .font(.title).foregroundColor(.red)
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                    Button(action:{}){
                        ZStack{
                            Circle().frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).foregroundColor(.red)
                            
                            Image(systemName: "play.fill")
                                .font(.title3)
                                .foregroundColor(.white)
                        }

                    }
                    .padding(.horizontal,5)
                    .buttonStyle(PlainButtonStyle())
                    
                    Button(action:{}){
                        Image(systemName: "arrow.forward")
                            .font(.title)
                            .foregroundColor(.red)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                Spacer()
            }
            .padding(8)
            .background(Color("Dark"))
            
        }
        .ignoresSafeArea(.all, edges: .all)
//        .frame(width: screen.width / 1.65, height: screen.height - 350)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
