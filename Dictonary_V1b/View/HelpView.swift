//
//  HelpView.swift
//  Dictonary_V1b
//
//  Created by Eric Sousa on 2/7/23.
//

import SwiftUI

struct HelpView: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .center, spacing: 20.0){
                Text("Help")
                    .font(.title).bold()
                
                Text("Here you can find information about the app and also examples of how to use it")
                    .font(.body)
                    .multilineTextAlignment(.leading)
                Image(systemName: "book")
                Text("About the book")
                Image(systemName: "person.fill.questionmark")
                Text("how to use it ")
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)}
    }
}


struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
