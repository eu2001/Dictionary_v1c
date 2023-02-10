//
//  SearchAnnounc2.swift
//  Dictonary_V1b
//
//  Created by Eric Sousa on 2/8/23.
//

import SwiftUI

struct SearchAnnounc2: View {
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
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
            .padding(/*@START_MENU_TOKEN@*/.all, 20.0/*@END_MENU_TOKEN@*/)
        } }}

struct SearchAnnounc2_Previews: PreviewProvider {
    static var previews: some View {
        SearchAnnounc2().environmentObject(ContentModel())
    }
}
