//
//  FlashCardGameView.swift
//  Dictonary_V1b
//
//  Created by Eric Sousa on 2/7/23.
//

import SwiftUI

struct FlashCardsGameView: View {
    @EnvironmentObject var model: ContentModel
    @State var pickerIndex = "GER"
    @State var pickerIndexChap = "AIR"
    @State var cartao = true
    @State private var fillColor: UIColor = UIColor.blue
   
        var cardColor: Color {
                return Color(
                    .sRGB,
                    red: 0.2,
                    green: 0.2,
                    blue: 0.7,
                    opacity: 0.8
                )
            }
    @State var texto = "nameEng"
  //  var nomecomp = "r." + texto
        var body: some View {
            VStack{
                Text("Flashcards")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.all)
                Spacer()
                Text("Category:")
                    .font(.title3)
                Picker("", selection: $pickerIndexChap
                )
                {   Text("General Vocabulary").tag("GEN")
                    Text("Airplane Vocabulary").font(.title2)
                        .fontWeight(.medium)
                        .foregroundColor(Color.black)
                        .tag("AIR")
                    Text("Emergency").font(.title2)
                        .fontWeight(.medium)
                        .foregroundColor(Color.black).tag("EME")
                    Text("Meal Service").font(.title2)
                        .fontWeight(.medium)
                        .foregroundColor(Color.black).tag("MEA")
                    Text("Beverage Service").font(.title2)
                        .fontWeight(.medium)
                        .foregroundColor(Color.black).tag("BEV")
                    Text("Announcements").font(.title2)
                        .fontWeight(.medium)
                        .foregroundColor(Color.black).tag("ANN")
                    Text("Favorites").font(.title2)
                        .fontWeight(.medium)
                        .foregroundColor(Color.black).tag("FAV")
                    
                }.padding(.all, 5.0).accentColor(.white).font(.title3).background(.blue).cornerRadius(20).opacity(0.8)
                
                Spacer()
                
                HStack(alignment: .center, spacing:20){
                    VStack{Image("english").resizable().scaledToFill().frame(minWidth: 30, idealWidth: 70, maxWidth: 70, minHeight: 30, idealHeight: 70, maxHeight: 70, alignment: .center).cornerRadius(45)
                        Text("English")
                    }.frame(width: 70.0, height: 90.0)
                    Image(systemName: "arrow.right.circle").resizable().frame(minWidth: 30, idealWidth: 50, maxWidth: 50, minHeight: 30, idealHeight: 50, maxHeight: 50, alignment: .center)
                    VStack(spacing:0){ Image(bandeira()).resizable().scaledToFill().frame(minWidth: 30, idealWidth: 70, maxWidth: 70, minHeight: 30, idealHeight: 70, maxHeight: 70, alignment: .center).cornerRadius(45)
                        Picker("", selection: $pickerIndex)
                        {   Text("Spanish").tag("ESP")
                            Text("French").tag("FRE")
                            Text("German").tag("GER")
                            Text("Portuguese").tag("POR")
                            Text("Italian").tag("ITA")
                            Text("Hebrew").tag("HEB")
                            Text("ASL").tag("ASL")
                        }
                        .frame(width: 200.0, height: 30).accentColor(.black)
                    }.frame(width: 70.0, height: 90.0)
                }.padding(.horizontal, 20 )
                TabView {
                    
                    ForEach (model.books){
                        r in
                        ZStack{
                            VStack(alignment: .center){
                                ZStack{ Rectangle().background(.white).foregroundColor(Color(fillColor)).frame(minWidth: 0,  maxWidth: 300, minHeight: 0, maxHeight: 210,  alignment: .center).cornerRadius(25).shadow(color: .gray, radius: 7, x: 7, y: 7).opacity(0.45).onTapGesture {
                                    
                                    mudacor(r)
                                }
                                //var textComp = "r." + texto
                                    Text(texto)
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.white)
                                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)}
                                .padding(.bottom)
                                
                                HStack{
                                    Spacer()
                                    Button {} label: {
                                        VStack(spacing:0){ Image(systemName: "star.fill").foregroundColor(.white).padding(.all).frame(minWidth: 30, idealWidth: 50, maxWidth: 50, minHeight: 30, idealHeight: 50, maxHeight: 50, alignment: .center).background(.yellow).cornerRadius(45)
                                            Text("Favorites").font(.caption2).foregroundColor(.black)}
                                    }
                                    
                                    
                                    Spacer()
                                    Button {SoundManager.instance.playSound(sound: .GoodmorningGER)} label: {
                                        Image(systemName: "speaker.fill").padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).frame(minWidth: 30, idealWidth: 60, maxWidth: 60, minHeight: 30, idealHeight: 60, maxHeight: 60, alignment: .center).background(.blue).foregroundColor(.white).cornerRadius(45)
                                    }
                                    
                                    
                                    Spacer()
                                    Button {} label: {
                                        Image(systemName: "tortoise.fill").padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/).frame(minWidth: 30, idealWidth: 50, maxWidth: 50, minHeight: 30, idealHeight: 50, maxHeight: 50, alignment: .center).background(.blue).foregroundColor(.white).cornerRadius(45)}
                                    Spacer()
                                    
                                }.padding(.bottom, 25)
                                
                            }
                 
                        }
                        
                    } }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic)).indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always)).padding(.bottom, 20)
                
                
            }
            
            
        }
    func bandeira( ) -> String {
        var band = pickerIndex
        switch band { case "ESP": band = "spanish"
        case "FRE": band = "french"
        case "GER": band = "german"
        case "POR": band = "portuguese"
        case "ITA": band = "italian"
        case "HEB": band = "hebrew"
        case "ASL": band = "asl"
         default:
        band =  "german"
        }
        return band

    }
    
    func mudacor(_  index: Book) -> Bool {
      if cartao == false
        {fillColor = UIColor.blue
          texto = index.nameEng
          cartao = true
      }
        else if cartao == true {fillColor = UIColor.red
          texto = index.nameGer
            cartao = false
        }
        return cartao
    }

}

struct FlashCardsGameView_Previews: PreviewProvider {
    static var previews: some View {
        FlashCardsGameView().environmentObject(ContentModel())
    }
}
