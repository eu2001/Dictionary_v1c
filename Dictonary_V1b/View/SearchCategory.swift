//
//  SearchCategory.swift
//  Dictonary_V1b
//
//  Created by Eric Sousa on 2/7/23.
//

import SwiftUI

struct SearchCategory: View {
    @EnvironmentObject var model: ContentModel
    var categorias = ["Greetings & Basic Vocabulary", "Airplane Vocabulary", "Safety Vocabulary", "Meal Service", "Beverage Service", "Medical Vocabulary", "Emergency"]
    var body: some View {
        ScrollView{   NavigationView{
            VStack {Text("Categories")
                    .font(.title).bold()
                List(categorias, id: \.self) {r in
                    VStack{
                        NavigationLink(destination:
                                        SearchDialoge() , label:{  Text(r)})}
                }}}}}}
                        
                  
                    
                        
                        
                        
                 

struct SearchCategory_Previews: PreviewProvider {
    static var previews: some View {
        SearchCategory().environmentObject(ContentModel())
    }
}
