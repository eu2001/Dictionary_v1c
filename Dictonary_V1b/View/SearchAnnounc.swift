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
                    endPoint: .bottom)).ignoresSafeArea()
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
                    }.padding(.bottom, 5.0).background(.blue).opacity(0.8).cornerRadius(15)}.accentColor(.white)
                
                HStack{
                    Text("Select the Announcement: ").font(.subheadline).bold()
                    
                    Picker("Announcement", selection: $pickerAnou){
                        ForEach(anuncios, id: \.self){ index in
                            Text(index).tag(String(index))}}.padding(.bottom, 5.0).background(.blue).opacity(0.8).cornerRadius(15)}.accentColor(.white)
                
                ScrollView {
                    VStack(alignment: .center, spacing: 20.0)
                    {
                        Spacer()
                        ZStack{
                            Rectangle().foregroundColor(.white).frame(maxWidth: .infinity).cornerRadius(25).padding(.horizontal, 5).shadow(color: .gray, radius: 4, x: 7, y: 7)
                            VStack{
                                HStack{
                                    Button { SoundManager.instance.playSound(sound: .BoardingAnnounc) } label: {
                                        Image(systemName: "speaker.fill").padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).frame(minWidth: 30, idealWidth: 50, maxWidth: 50, minHeight: 30, idealHeight: 50, maxHeight: 50, alignment: .center).background(.blue).foregroundColor(.white).cornerRadius(45)}
                                    Text(model.books[3].nameEng)
                                        .font(.title3)
                                   Spacer()
                                }
                              
                                Text(model.books[3].translitEng)
                                .multilineTextAlignment(.leading)}
                            .padding(.all, 20.0)
                            
                        }
                        
                        Divider()
                        Spacer()
                        ZStack{
                            Rectangle().foregroundColor(.white).frame(maxWidth: .infinity).cornerRadius(25).padding(.horizontal, 5).shadow(color: .gray, radius: 4, x: 7, y: 7)
                            VStack{
                                HStack{  Button { SoundManager.instance.playSound(sound: .BoardingAnnouncPOR) } label: {
                                    Image(systemName: "speaker.fill").padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).frame(minWidth: 30, idealWidth: 50, maxWidth: 50, minHeight: 30, idealHeight: 50, maxHeight: 50, alignment: .center).background(.blue).foregroundColor(.white).cornerRadius(45)}
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
                
                /*  NavigationView{
                 VStack{
                 
                 List(anuncios, id: \.self){ index in
                 NavigationLink(destination: SearchAnnounc2(), label:{Text(index)} )
                 
                 
                 }
                 }
                 } */
                
                // }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).navigationBarHidden(false)
            }
            .padding(.horizontal, 10.0)}}
}

struct SearchAnnounc_Previews: PreviewProvider {
    static var previews: some View {
        SearchAnnounc().environmentObject(ContentModel())
    }
}
