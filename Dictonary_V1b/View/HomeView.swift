//
//  ContentView.swift
//  Dictonary_V1b
//
//  Created by Eric Sousa on 2/7/23.
//

import SwiftUI

struct HomeView: View {
    // @EnvironmentObject var model:ContentModel
    @StateObject var model:ContentModel = ContentModel()
    @State private var showWelcomeView = false
    
        var body: some View {
                   NavigationView {
                       ZStack{Image("airplane").ignoresSafeArea().opacity(0.7).scaledToFill()
                           VStack(alignment: .center){
                               Text("Flight Attendant").font(.largeTitle)
                                   .fontWeight(.bold)
                                   .multilineTextAlignment(.center)
                                   .padding(/*@START_MENU_TOKEN@*/.top, 85.0/*@END_MENU_TOKEN@*/)
                                Text("Dictionary")
                                   .font(.largeTitle)
                                   .fontWeight(.bold)
                                   .multilineTextAlignment(.center)
                               
                           Spacer()
                           
                           VStack {
                        
                           Button(action: { showWelcomeView = true }) {
                               Text("Click Here to Start").foregroundColor(.white)
                                   .fontWeight(.bold)
                                   .frame( maxWidth: 200)
                                   .padding(.all,20)
                                   .foregroundColor(.blue)
                                   .background(LinearGradient(gradient: Gradient(colors: [.green, .green]), startPoint: .leading, endPoint: .trailing))
                                   .cornerRadius(10)
                           }
                           NavigationLink("", destination:  MenuView(), isActive: $showWelcomeView)
                               
                               Link(destination: URL(string:"https://www.amazon.com")!, label: {
                                   Text("Buy the Book Here").foregroundColor(.white)
                                       .fontWeight(.bold)
                                       .frame( maxWidth: 200)
                                       .padding(.all,20)
                                       .foregroundColor(.blue)
                                       .background(LinearGradient(gradient: Gradient(colors: [.red, .red]), startPoint: .leading, endPoint: .trailing))
                                       .cornerRadius(10)
                               })
                               
                    
                       }
                          Spacer() }
                           .padding(.top, 45.0)
                         
                       }
                   }
                   
               }
           }
                
               

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()

    }
}
