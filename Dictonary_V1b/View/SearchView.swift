//
//  SearchView.swift
//  Dictonary_V1b
//
//  Created by Eric Sousa on 2/7/23.
//

import SwiftUI

struct SearchView: View {
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Search").font(.title).bold().padding([.leading, .bottom, .trailing], 20.0)
            NavigationView {
                ScrollView{
                    VStack(alignment: .leading, spacing: 25.0){ NavigationLink( destination: SearchWord(), label: { Text("Search by Word").foregroundColor(.white).frame(minWidth: 0, maxWidth: 200)
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
                    }
                    
                    .padding(.bottom)
                }}}.navigationBarBackButtonHidden(true).padding(.horizontal)
    }}


struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
