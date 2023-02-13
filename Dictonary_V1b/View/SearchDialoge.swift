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
        VStack(alignment: .center){
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
                }.padding(.bottom, 5.0).background(.blue).opacity(0.8).cornerRadius(15)}.accentColor(.white)
            
            HStack{
                Text("Select the Dialogue: ").font(.subheadline).bold()
                
                Picker("Announcement", selection: $pickerAnou){
                    ForEach(anuncios, id: \.self){ index in
                        Text(index).tag(String(index))}}.padding(.bottom, 5.0).background(.blue).opacity(0.8).cornerRadius(15)}.accentColor(.white)
           
            ScrollView { VStack(alignment: .leading, spacing: 20.0)
                {
                    Spacer()
                    HStack{
                        Button {SoundManager.instance.playSound(sound: .Goodmorning) } label: {
                            Image(systemName: "speaker.fill").padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).frame(minWidth: 30, idealWidth: 50, maxWidth: 50, minHeight: 30, idealHeight: 50, maxHeight: 50, alignment: .center).background(.blue).foregroundColor(.white).cornerRadius(45)}
                        Text(model.books[4].nameEng)
                        .font(.title3)
                        
                    }
                    Text(model.books[4].translitEng)
                        .multilineTextAlignment(.leading)
                   
                   Divider()
                    Spacer()
                    HStack{  Button { SoundManager.instance.playSound(sound: .GoodmorningPOR)
                        
                    } label: {
                        Image(systemName: "speaker.fill").padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).frame(minWidth: 30, idealWidth: 50, maxWidth: 50, minHeight: 30, idealHeight: 50, maxHeight: 50, alignment: .center).background(.blue).foregroundColor(.white).cornerRadius(45)}
                        Text(model.books[4].namePort)
                        .font(.title3)
                        
                    }
                    Text(model.books[4].translitPor)
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                    
                    
                    
                }.padding(/*@START_MENU_TOKEN@*/.vertical, 20.0/*@END_MENU_TOKEN@*/)
            }
            
      
            
            
        }.padding(.horizontal, 30.0)}
}

struct SearchDialoge_Previews: PreviewProvider {
    static var previews: some View {
        SearchDialoge().environmentObject(ContentModel())
    }
}
