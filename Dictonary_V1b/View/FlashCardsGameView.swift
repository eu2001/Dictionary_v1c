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
    @State var cartao = false
    @State private var fillColor: UIColor = UIColor.systemGray6
   
        var cardColor: Color {
                return Color(
                    .sRGB,
                    red: 0.2,
                    green: 0.2,
                    blue: 0.7,
                    opacity: 0.8
                )
            }
    @State var texto = "Click Here to Start"
  //  var nomecomp = "r." + texto
        var body: some View {
            ZStack{
                Rectangle().fill(
                 LinearGradient(
                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.610079325, green: 0.9385074156, blue: 1, alpha: 1)), Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))]),
                                  startPoint: .topLeading,
                                  endPoint: .bottom)).ignoresSafeArea()
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
                            
                                    Text(texto)
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.white)
                                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)}
                                .padding(.bottom)
                                
                                HStack{
                                    Spacer()
                                    Button {} label: {
                                        VStack{
                                            ZStack{
                                                Image(systemName: "star.fill").foregroundColor(.white).padding(.all)
                                                Circle().stroke().frame(minWidth: 30, idealWidth: 50, maxWidth: 50, minHeight: 30, idealHeight: 50, maxHeight: 50, alignment: .center).foregroundColor(.yellow)
                                            }
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
        /*//colocar o name + lingua
            var band2 = pickerIndex
            switch band2 { case "ESP": band2 = "index.nameEsp"
            case "FRE": band2 = "index.nameFre"
            case "GER": band2 = "index.nameGer"
            case "POR": band2 = "index.namePort"
            case "ITA": band2 = "index.nameIta"
            case "HEB": band2 = "index.nameheb"
            case "ASL": band2 = "index.nameAsl"
             default:
            band2 =  "german"
            } */
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
