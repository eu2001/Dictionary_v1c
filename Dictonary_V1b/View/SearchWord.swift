//
//  SearchWord.swift
//  Dictonary_V1b
//
//  Created by Eric Sousa on 2/7/23.
//

import SwiftUI

struct SearchWord: View {
     var listofWords = ["Airplane", "Airport", "Good Morning","Overhead Bin","Boarding"]
  //  var listofWords = model.books
    @State var searchText = ""
    @EnvironmentObject var model: ContentModel
    var body: some View {
        NavigationView{
            
             List{
                    ForEach(words, id: \.self){ word in
                        HStack(spacing: 20) {Text(word.capitalized)
                           Spacer() 
                            Button { } label: {
                                Image(systemName: "play.fill").foregroundColor(.blue)}
                                
                            Button { } label: {
                                Image(systemName: "star").foregroundColor(.yellow)
                            }
                            Button { } label: {
                                Image(systemName: "arrowtriangle.down.fill").foregroundColor(.black)
                            }

                        }
                    }
                }.searchable(text: $searchText)
            }
            
        }
        var words: [String] {
            let lcWords = listofWords.map { $0.lowercased() }
            return searchText == "" ? lcWords : lcWords.filter{ $0.contains(searchText.lowercased())}
        }
    }

struct SearchWord_Previews: PreviewProvider {
    static var previews: some View {
        SearchWord().environmentObject(ContentModel())
    }
}
