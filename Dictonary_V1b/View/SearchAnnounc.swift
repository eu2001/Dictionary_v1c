//
//  SearchAnnounc.swift
//  Dictonary_V1b
//
//  Created by Eric Sousa on 2/7/23.
//

import SwiftUI

struct SearchAnnounc: View {
    
    @EnvironmentObject var model: ContentModel
    var anuncios = ["Boarding","Seatbelt Sign", "Medical Emergency", "Overhead Bin Space","Turbulance","Inoperative Wifi","Deplaning"]
    @State var pickerIndex = "POR"
    @State var pickerAnou = "0"
    var body: some View {
        ZStack{
            Rectangle().fill(
                LinearGradient(
                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.610079325, green: 0.9385074156, blue: 1, alpha: 1)), Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))]),
                    startPoint: .topLeading,
                    endPoint: .bottom)).opacity(0.8).ignoresSafeArea()
            VStack(alignment: .leading){
                // Button("Back to Search"){ }.padding(.bottom)
                Text("Announcements").font(.title).bold()
                HStack{
                    Text("Select the Language: ").font(.subheadline).bold()
                    Picker("Language", selection: $pickerIndex)
                    {Text("Spanish").tag("ESP")
                        Text("French").tag("FRE")
                        Text("German").tag("GER")
                        Text("Portuguese").tag("POR")
                        Text("Italian").tag("ITA")
                        Text("Hebrew").tag("HEB")
                        Text("ASL").tag("ASL")
                    }.padding(.bottom, 5.0).background(.blue).opacity(0.8).cornerRadius(15).shadow(color: .blue , radius: 3)}.accentColor(.white)
                
                HStack{
                    Text("Select the Announcement: ").font(.subheadline).bold()
                    
                    Picker("Announcement", selection: $pickerAnou){
                        ForEach(anuncios, id: \.self){ index in
                            Text(index).tag(String(index))}}.padding(.bottom, 5.0).background(.blue).opacity(0.8).cornerRadius(15).shadow(color: .blue , radius: 3)}.accentColor(.white)
                
                ScrollView {
                    VStack(alignment: .center, spacing: 10.0)
                    {
                        Spacer()
                        ZStack{
                            Rectangle().foregroundColor(.white).frame(maxWidth: .infinity).cornerRadius(25).padding(.horizontal, 5).shadow(color: .gray, radius: 4, x: 7, y: 7)
                            VStack{
                                HStack{
                                    Button { SoundManager.instance.playSound(sound: .BoardingAnnounc) } label: {
                                        Image(systemName: "speaker.fill").padding(20).foregroundColor(.white).background( Circle().shadow(color: .blue, radius: 3).frame( maxWidth: 50, maxHeight: 50, alignment: .center))}
                                    Text(model.books[3].nameEng)
                                        .font(.title3)
                                   Spacer()
                                }
                              
                                Text(model.books[3].translitEng)
                                .multilineTextAlignment(.leading)}
                            .padding(.all, 20.0)
                            
                        }
                        Spacer()
                        Divider()
                        Spacer()
                        ZStack{
                            Rectangle().foregroundColor(.white).frame(maxWidth: .infinity).cornerRadius(25).padding(.horizontal, 5).shadow(color: .gray, radius: 4, x: 7, y: 7)
                            VStack{
                                HStack{  Button { SoundManager.instance.playSound(sound: .BoardingAnnouncPOR) } label: {
                                    Image(systemName: "speaker.fill").padding(20).foregroundColor(.white).background( Circle().shadow(color: .blue, radius: 3).frame( maxWidth: 50, maxHeight: 50, alignment: .center))}
                                    Text(model.books[3].namePort)
                                        .font(.title3)
                                    Spacer()
                                    
                                }
                                
                                Text(model.books[3].translitPor)
                                .multilineTextAlignment(.leading)}   .padding(.all, 20.0)
                        }
                        Spacer()
                        
                        
                        
                    }//.navigationBarHidden(true)
                    .padding(/*@START_MENU_TOKEN@*/.vertical, 20.0/*@END_MENU_TOKEN@*/)
                }
                
             
            }
            .padding(.horizontal, 10.0)}}
}

struct SearchAnnounc_Previews: PreviewProvider {
    static var previews: some View {
        SearchAnnounc().environmentObject(ContentModel())
    }
}
