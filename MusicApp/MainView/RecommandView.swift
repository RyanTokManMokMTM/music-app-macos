//
//  RecommandView.swift
//  MusicApp
//
//  Created by Jackson on 15/11/2021.
//

import SwiftUI

struct RecommandView: View {
    @State private var index = 0
    var grids = Array(repeating: GridItem(.flexible(), spacing: 0), count: 2)
    var body: some View {
        VStack(alignment:.leading){
            HStack(spacing:5){
                Text("推薦歌單")
                Image(systemName: "chevron.right")
            }
            .font(.title2)
            .padding(.leading,8)
            .foregroundColor(.gray)
            
            HStack(alignment:.top){
                CardItem(imageName: "testA", playTIme: "1w",title: "每日歌曲推薦")
                CardItem(imageName: "testB", playTIme: "5w",title: "摩登天空回归云村|热爱的乐队永远发光！")
                CardItem(imageName: "testC", playTIme: "16w",title: "热歌榜")
                CardItem(imageName: "testD", playTIme: "545",title: "[华语私人订制] 最懂你的华语推荐 每日更新35首")
                CardItem(imageName: "testE", playTIme: "869",title: "双数再赌一次，单数把你删了")
            }
//            .padding(.vertical)
            
            HStack(alignment:.top){
                CardItem(imageName: "singerA", playTIme: "135w",title: "粤语歌单 」稍微親近就口無遮攔的毛病要改")
                CardItem(imageName: "singerB", playTIme: "66w",title: "精选|超好听的网络热歌")
                CardItem(imageName: "singerC", playTIme: "1w",title: "听完这些歌我就把你忘了吧")
                CardItem(imageName: "singerD", playTIme: "66w",title: "精选集·超级温柔的翻唱Cover鸭")
                CardItem(imageName: "singerE", playTIme: "8654",title: "神仙翻唱：超好听的翻唱")
            }
//            .padding(.vertical)
            .padding(.bottom,50)
            
            HStack(spacing:5){
                Text("最新音樂")
                Image(systemName: "chevron.right")
            }
            .font(.title2)
//            .padding(.top)
            .padding(.leading,8)
            .foregroundColor(.gray)
            
            LazyVGrid(columns: grids){
                NewMusicItem(title: "漠河舞厅·2022", singer: "劉爽", image: "music", index: "01",backgroundColor: Color("Dark"))
                NewMusicItem(title: "獲獎感言", singer: "荒唐", image: "musicB", index: "02")
                NewMusicItem(title: "B級鯊魚", singer: "張杰", image: "musicC", index: "03")
                NewMusicItem(title: "全體會開花", singer: "YKEY", image: "musicD", index: "04")
                NewMusicItem(title: "風", singer: "劉日雲", image: "musicE", index: "05")

                
            }
            .padding(.bottom,50)
            
            HStack(spacing:5){
                Text("最新MV")
                Image(systemName: "chevron.right")
            }
            .font(.title2)
            .padding(.leading,8)
            .foregroundColor(.gray)
            
            HStack(alignment:.top){
                CardMVItem(imageName: "singerD",title: "粤语歌单 」稍微親近就口無遮攔的毛病要改")
                CardMVItem(imageName: "testB",title: "精选|超好听的网络热歌")
                CardMVItem(imageName: "testD",title: "听完这些歌我就把你忘了吧")
                CardMVItem(imageName: "singerC",title: "精选集·超级温柔的翻唱Cover鸭")
            }
            .padding(.bottom,50)
        }
        .padding(.horizontal)
        .frame(maxWidth:.infinity)
    }
}

//struct RecommandView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardMVItem(imageName: "singerD", playTIme: "66w",title: "精选集·超级温柔的翻唱Cover鸭")
//    }
//}



struct CardItem : View {
    var imageName : String
    var playTIme : String
    var title : String
    var body: some View {
        VStack{
            VStack(){
                ZStack(alignment: .topTrailing){
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    HStack(spacing:2){
                        Image(systemName: "play")
                            .font(.body)
                            
                        Text(playTIme)
                    }
                    .padding(.horizontal,8)
                    .padding(.top,3)
                }
            }
            .frame(width: 150, height: 150)
            .cornerRadius(10)
            
            HStack(alignment:.top){
                Text(title)
                    .font(.body)
                    .multilineTextAlignment(.leading)
                    .fixedSize(horizontal: false, vertical: true)
                    .foregroundColor(.gray)
                    .lineLimit(3)
    
                Spacer()
            }
      
                
        }
        .frame(maxWidth:150)
        .padding(.horizontal,8)

    }
    
}

struct CardMVItem : View {
    var imageName : String
    var title : String
    var body: some View {
        VStack{
            VStack(){
                ZStack(alignment:.topLeading){
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 190, height: 100)
                        .clipped()
                    
                    HStack(spacing:2){
                        Image(systemName: "play.circle")
                            .font(.system(size: 25))
                    }
                    .padding(.horizontal,8)
                    .padding(.top,3)
                }
            }
            .frame(width: 190, height: 100)
            .cornerRadius(10)
            
            HStack(alignment:.top){
                Text(title)
                    .font(.body)
                    .multilineTextAlignment(.leading)
                    .fixedSize(horizontal: false, vertical: true)
                    .foregroundColor(.gray)
                    .lineLimit(3)
    
                Spacer()
            }
      
                
        }
        .frame(maxWidth:190)
        .padding(.horizontal,8)

    }
    
}

struct MusicIcon : View{
    var image : String
    var action : ()->()
    var body: some View{
            Button(action:action){
                
                ZStack{
                    Image(image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 70, height: 70)
                        .clipped()
                        .cornerRadius(5)
                    
                    
                    Image(systemName: "play.fill")
                        .font(.system(size: 15))
                        .foregroundColor(.red)
                        .background(Circle().frame(width: 25, height: 25).opacity(0.8))
                }
            }
            .buttonStyle(PlainButtonStyle())
        
    }
}

struct NewMusicItem : View{
    var title : String
    var singer : String
    var image : String
    var index : String
    var backgroundColor : Color = Color.clear
    var body: some View{
        
        HStack{
            MusicIcon(image: image){
                print("music id is ???")
            }
            HStack(spacing:10){
                Text(index)
                    .font(.body)
                    .foregroundColor(Color.gray.opacity(0.8))
                    
                VStack(alignment:.leading){
                    Text(title)
                        .font(.headline)
                        .foregroundColor(Color.white.opacity(0.65))
                        .padding(.vertical,2)
                    HStack(alignment:.bottom,spacing:5){
                        Text("SQ")
                            .font(.footnote)
                            .foregroundColor(Color.red)
                            .padding(1)
                            .overlay(RoundedRectangle(cornerRadius: 3).stroke(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/).foregroundColor(.red))
                        
                        Text(singer)
                            .font(.body)
                            .foregroundColor(Color.gray.opacity(0.8))
                    }
                
                }
            }
            .padding(.leading,5)
            
            
            Spacer()
        }
        .padding()
        .frame(maxWidth:.infinity)
        .background(backgroundColor.opacity(0.75).cornerRadius(5).padding(5))
    }
}
