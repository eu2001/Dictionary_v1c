//
//  SearchDialoge.swift
//  Dictonary_V1b
//
//  Created by Eric Sousa on 2/7/23.
//

import SwiftUI

struct SearchDialoge: View {
    @EnvironmentObject var model: ContentModel
    var anuncios = ["Boarding","Seatbelt Sign", "Medical Emergency", "Overhead Bin","Turbulance","Inoperative Wifi","Deplaning"]
    @State var pickerIndex = "POR"
    @State var pickerAnou = "3"
    var body: some View {
        ZStack{
            Rectangle().fill(
                LinearGradient(
                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.610079325, green: 0.9385074156, blue: 1, alpha: 1)), Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))]),
                    startPoint: .topLeading,
                    endPoint: .bottom)).ignoresSafeArea()
           
            VStack(alignment: .leading){
                Text("Dialogues").font(.title).bold()
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
                    Text("Select the Dialogue: ").font(.subheadline).bold()
                    
                    Picker("Announcement", selection: $pickerAnou){
                        ForEach(anuncios, id: \.self){ index in
                            Text(index).tag(String(index))}}.padding(.bottom, 5.0).background(.blue).opacity(0.8).cornerRadius(15).shadow(color: .blue , radius: 3)}.accentColor(.white)
                
                
                
                ScrollView { VStack(alignment: .leading, spacing: 10.0)
                    {
                        Spacer()
                        ZStack{
                            Rectangle().foregroundColor(.white).frame(maxWidth: .infinity).cornerRadius(25).padding(.horizontal, 5).shadow(color: .gray, radius: 4, x: 7, y: 7)
                            VStack(alignment: .leading){
                                HStack{
                                    Button {SoundManager.instance.playSound(sound: .Goodmorning) } label: {
                                        Image(systemName: "speaker.fill").padding(20).foregroundColor(.white).background( Circle().shadow(color: .blue, radius: 3).frame( maxWidth: 50, maxHeight: 50, alignment: .center))}
                                    Text(model.books[4].nameEng)
                                        .font(.title3)
                                    
                                }
                                Text(model.books[4].translitEng)
                                .multilineTextAlignment(.leading)}
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)}
                        Spacer()
                        Divider()
                        Spacer()
                        ZStack{
                            Rectangle().foregroundColor(.white).frame(maxWidth: .infinity).cornerRadius(25).padding(.horizontal, 5).shadow(color: .gray, radius: 4, x: 7, y: 7)
                            
                            VStack(alignment: .leading){
                                HStack{  Button { SoundManager.instance.playSound(sound: .GoodmorningPOR)
                                    
                                } label: {
                                    Image(systemName: "speaker.fill").padding(20).foregroundColor(.white).background( Circle().shadow(color: .blue, radius: 3).frame( maxWidth: 50, maxHeight: 50, alignment: .center))}
                                    Text(model.books[4].namePort)
                                        .font(.title3)
                                    
                                }
                                Text(model.books[4].translitPor)
                                .multilineTextAlignment(.leading)}
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            
                            Spacer()
                       
                        }}
                }
            
            }.padding(.horizontal, 10)}}
}

struct SearchDialoge_Previews: PreviewProvider {
    static var previews: some View {
        SearchDialoge().environmentObject(ContentModel())
    }
}
