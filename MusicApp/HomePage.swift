//
//  HomePage.swift
//  MusicApp
//
//  Created by Jackson on 15/11/2021.
//

import SwiftUI

struct HomePage: View {
    @StateObject var NavVM = NavModel()
    var screen = NSScreen.main!.visibleFrame
    @State private var index : Int = 0
    @State private var hoverIndex = -1
    
    @State private var leftIndex : Int = 0
    @State private var leftHoverIndex = -1
    var body: some View {
        VStack(spacing:0){
            //Top
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
                }.frame(width: screen.width / 9 )
                
                TopNavBar(index: self.$index, hoverIndex: self.$hoverIndex)
                
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
            
            //Left
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
                    
                    LeftNavBar(leftIndex: self.$leftIndex, leftHoverIndex: self.$leftHoverIndex)
                    Spacer()
                }
                .padding(.vertical)
                .frame(maxWidth: screen.width / 9)
                .background(BlurView())
                
                ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: true){
                    RecommandView()
                        .padding(.top)
//                        .frame(maxWidth:.infinity)
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
            .environmentObject(NavVM)
    }
    
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}
