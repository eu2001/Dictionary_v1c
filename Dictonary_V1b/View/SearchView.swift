//
//  SearchView.swift
//  Dictonary_V1b
//
//  Created by Eric Sousa on 2/7/23.
//

import SwiftUI

struct SearchView: View {
    
    var body: some View {
      //  VStack(alignment: .leading){
          //  Text("Search").font(.title).bold().padding([.leading, .bottom, .trailing], 20.0)
       
            NavigationView {
                ZStack{
                    Rectangle().fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color(#colorLiteral(red: 0.610079325, green: 0.9385074156, blue: 1, alpha: 1)), Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))]),
                            startPoint: .topLeading,
                            endPoint: .bottom)).ignoresSafeArea()
                ScrollView{
                    VStack(alignment: .leading, spacing: 25.0){
                        Text("Search").font(.title).bold()
                        NavigationLink( destination: SearchWord(), label: { Text("Search by Word").foregroundColor(.white).frame(minWidth: 0, maxWidth: 200)
                                .padding(.all,20).font(.title2)
                                .foregroundColor(.white)
                                .background(LinearGradient(gradient: Gradient(colors: [.blue, .blue]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(10)})
                        NavigationLink( destination: SearchCategory(), label: { Text("Search by Category").foregroundColor(.white).frame(minWidth: 0, maxWidth: 200)
                                .padding(.all,20).font(.title2)
                                .foregroundColor(.white)
                                .background(LinearGradient(gradient: Gradient(colors: [.blue, .blue]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(10)})
                        NavigationLink( destination: SearchAnnounc(), label: { Text("Announcements").foregroundColor(.white).frame(minWidth: 0, maxWidth: 200)
                                .padding(.all,20).font(.title2)
                                .foregroundColor(.white)
                                .background(LinearGradient(gradient: Gradient(colors: [.blue, .blue]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(10)})
                        NavigationLink( destination: SearchDialoge(), label: { Text("Dialogues").foregroundColor(.white).frame(minWidth: 0, maxWidth: 200)
                                .padding(.all,20).font(.title2)
                                .foregroundColor(.white)
                                .background(LinearGradient(gradient: Gradient(colors: [.blue, .blue]), startPoint: .leading, endPoint: .trailing))
                            .cornerRadius(10)})
                    }.navigationBarHidden(false).padding(.bottom)
                }
            }}
        
    //}.padding(.horizontal)
        
    }

}


struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
