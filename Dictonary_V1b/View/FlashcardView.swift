//
//  FlashcardView.swift
//  Dictonary_V1b
//
//  Created by Eric Sousa on 2/7/23.
//

import SwiftUI

struct FlashcardView: View {
    // var cards = [Book]()
    //   var book: Book
    //@ObservedObject var card
    
    @State var pickerIndex = "FRE"
    @State var pickerIndexChap = "AIR"
    @State private var showFlashIntroView = false
    var body: some View {
        VStack(alignment: .center, spacing:20)
        {
            Text("Flashcards").font(.title).bold().padding(.bottom, 40.0)
            
            ScrollView{ VStack(alignment: .leading, spacing:0){
                Text("Select the Language to Practice:")
                    .font(.title2)
                    .multilineTextAlignment(.leading)
                    .padding(.vertical, 30.0)
            Picker("Cards", selection: $pickerIndex)
         {   Text("Spanish").tag("ESP")
                Text("French").tag("FRE")
               Text("German").tag("GER")
              Text("Portuguese").tag("POR")
             Text("Italian").tag("ITA")
             Text("Hebrew").tag("HEB")
             Text("ASL").tag("ASL")
         }.padding(.bottom, 5.0).pickerStyle(WheelPickerStyle()).frame(width: 300, height: 80, alignment: .center
         ).clipped()
        }
                Spacer()
                VStack(alignment: .leading, spacing:0){
                    Text("Select the Subject to Practice:")
                        .font(.title2)
                        .multilineTextAlignment(.leading)
                        .padding(.vertical, 30.0)
                Picker("Cards", selection: $pickerIndexChap
                )
             {   Text("General Vocabulary").tag("GEN")
                    Text("Airplane Vocabulary").tag("AIR")
                   Text("Emergency").tag("EME")
                  Text("Meal Service").tag("MEA")
                 Text("Beverage Service").tag("BEV")
                 Text("Announcements").tag("ANN")
             }.padding(.bottom, 5.0).pickerStyle(WheelPickerStyle()).frame(width: 300, height: 80, alignment: .center
             ).clipped()
            }
                Spacer()
                
                Button(action: { showFlashIntroView = true }) {
                    Text("Start").foregroundColor(.white)
                        .fontWeight(.bold)
                        .frame(minWidth: 0, maxWidth: 200)
                        .padding(.all,20.0)
                        .foregroundColor(.blue)
                        .background(LinearGradient(gradient: Gradient(colors: [.blue, .blue]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(10)
                }
                .padding(.top, 35.0)
                NavigationLink("", destination:  FlashCardsGameView(), isActive: $showFlashIntroView)
                
               
        
            }
            
        }
        .padding([.leading, .bottom, .trailing], 20.0)
  
    }}
struct FlashcardView_Previews: PreviewProvider {
    static var previews: some View {
        FlashcardView()
    }
}
