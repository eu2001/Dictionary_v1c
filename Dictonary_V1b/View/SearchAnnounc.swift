//
//  SearchAnnounc.swift
//  Dictonary_V1b
//
//  Created by Eric Sousa on 2/7/23.
//

import SwiftUI

struct SearchAnnounc: View {
    var anuncios = ["Boarding","Seatbelt Sign", "Medical Emergency", "Overhead Bin Space","Turbulance","Inoperative Wifi","Deplaning"]
    @State var pickerIndex = "POR"
    var body: some View {
        VStack(alignment: .leading){
            Text("Announcements").font(.title).bold()
            HStack{
                Text("Select the Language: ")
                Picker("Language", selection: $pickerIndex)
         {   Text("Spanish").tag("ESP")
                Text("French").tag("FRE")
               Text("German").tag("GER")
              Text("Portuguese").tag("POR")
             Text("Italian").tag("ITA")
             Text("Hebrew").tag("HEB")
             Text("ASL").tag("ASL")
         }.padding(.bottom, 5.0).foregroundColor(.black)}
            
            NavigationView{
                VStack{
                    
           List(anuncios, id: \.self){ index in
               NavigationLink(destination: SearchAnnounc2(), label:{Text(index)} )
            
            
        }
                }.navigationBarHidden(true)
                
            }
            
        }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
}

struct SearchAnnounc_Previews: PreviewProvider {
    static var previews: some View {
        SearchAnnounc()
    }
}
