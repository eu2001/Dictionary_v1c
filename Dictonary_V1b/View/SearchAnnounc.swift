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
        VStack(alignment: .leading){
            Text("Announcements").font(.title).bold()
            HStack{
                Text("Select the Language: ")
                Picker("Language", selection: $pickerIndex)
                {Text("Spanish").tag("ESP")
                    Text("French").tag("FRE")
                    Text("German").tag("GER")
                    Text("Portuguese").tag("POR")
                    Text("Italian").tag("ITA")
                    Text("Hebrew").tag("HEB")
                    Text("ASL").tag("ASL")
                }.foregroundColor(.black).padding(.bottom, 5.0).cornerRadius(15)}.accentColor(.blue).font(.title3)
            
            HStack{
                Text("Select the Announcement: ")
               
                Picker("Announcement", selection: $pickerAnou){
                ForEach(anuncios, id: \.self){ index in
                    Text(index).tag(String(index))}.foregroundColor(.black).padding(.bottom, 5.0).cornerRadius(15)}.accentColor(.blue).font(.title3)}
            ScrollView { VStack(alignment: .center, spacing: 20.0)
                {
                    Spacer()
                    HStack{
                        Image(systemName: "speaker.fill").padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).frame(minWidth: 30, idealWidth: 50, maxWidth: 50, minHeight: 30, idealHeight: 50, maxHeight: 50, alignment: .center).background(.blue).foregroundColor(.white).cornerRadius(45)
                        Text(model.books[3].nameEng)
                        .font(.title3)
                        
                    }
                    Text(model.books[3].translitEng)
                        .multilineTextAlignment(.leading)
                   
                   Divider()
                    Spacer()
                    HStack{
                        Image(systemName: "speaker.fill").padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).frame(minWidth: 30, idealWidth: 50, maxWidth: 50, minHeight: 30, idealHeight: 50, maxHeight: 50, alignment: .center).background(.blue).foregroundColor(.white).cornerRadius(45)
                        Text(model.books[3].namePort)
                        .font(.title3)
                        
                    }
                    Text(model.books[3].translitPor)
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                    
                    
                    
                }.navigationBarHidden(true)
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
        .padding(/*@START_MENU_TOKEN@*/.all, 30.0/*@END_MENU_TOKEN@*/)}
}

struct SearchAnnounc_Previews: PreviewProvider {
    static var previews: some View {
        SearchAnnounc().environmentObject(ContentModel())
    }
}
