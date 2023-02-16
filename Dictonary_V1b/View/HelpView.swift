//
//  HelpView.swift
//  Dictonary_V1b
//
//  Created by Eric Sousa on 2/7/23.
//

import SwiftUI

struct HelpView: View {
    var body: some View {
        ZStack{
            Rectangle().fill(
             LinearGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.610079325, green: 0.9385074156, blue: 1, alpha: 1)), Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))]),
                              startPoint: .topLeading,
                              endPoint: .bottom)).ignoresSafeArea()
            
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
    }}


struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
