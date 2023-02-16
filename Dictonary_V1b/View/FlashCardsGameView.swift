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
                    
                }.padding(.all, 5.0).accentColor(.white).font(.title3).background(.blue).cornerRadius(20).opacity(0.8).shadow(color: .blue , radius: 3)
                
                Spacer()
                
                HStack(alignment: .center, spacing:20){
                    VStack(spacing:5){Image("english").resizable().scaledToFill().frame( maxWidth: 70,  maxHeight: 70, alignment: .center).cornerRadius(50).shadow(radius: 5)
                        Text("English")
                    }.frame(width: 70.0, height: 90)
                    Image(systemName: "arrow.right.circle").resizable().frame(minWidth: 30, idealWidth: 50, maxWidth: 50, minHeight: 30, idealHeight: 50, maxHeight: 50, alignment: .center)
                    VStack(spacing:5){ Image(bandeira()).resizable().scaledToFill().frame( maxWidth: 70,  maxHeight: 70, alignment: .center).cornerRadius(45).shadow(radius: 5)
                        Picker("", selection: $pickerIndex)
                        {   Text("Spanish").tag("ESP")
                            Text("French").tag("FRE")
                            Text("German").tag("GER")
                            Text("Portuguese").tag("POR")
                            Text("Italian").tag("ITA")
                            Text("Hebrew").tag("HEB")
                            Text("ASL").tag("ASL")
                        }
                        .frame(width: 200.0, height: 20).accentColor(.black)
                    }.frame(width: 70.0, height: 90.0)
                }.padding(.horizontal, 20 ).padding(.vertical, 20)
                TabView {
                    
                    ForEach (model.books){
                        r in
                        ZStack{
                            VStack(alignment: .center){
                                ZStack{ Rectangle().background(.white).foregroundColor(Color(fillColor)).frame(  maxWidth: 300, maxHeight: 210,  alignment: .center).cornerRadius(25).shadow(color: .gray, radius: 7, x: 7, y: 7).opacity(0.45).onTapGesture {
                                 mudacor(r)
                                }
                            
                                    Text(texto)
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.white)
                                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)}
                                .padding(.bottom)
                                
                                HStack(spacing:30){
                                    Spacer()
                                    Button {} label: {
                                       
                                            ZStack{
                                              
                                                Circle().frame(minWidth: 30, idealWidth: 50, maxWidth: 50, minHeight: 30, idealHeight: 50, maxHeight: 50, alignment: .center).foregroundColor(.white)
                                                Circle().stroke().frame(minWidth: 30, idealWidth: 50, maxWidth: 50, minHeight: 30, idealHeight: 50, maxHeight: 50, alignment: .center).foregroundColor(.yellow).shadow(color: .yellow, radius: 3).opacity(0.8)
                                                Image(systemName: "star").foregroundColor(.yellow).padding(.all)
                                                
                                              }
                                           
                                    }
                                    
                                    
                                  
                                    Button {SoundManager.instance.playSound(sound: .GoodmorningGER)} label: {
                                        Image(systemName: "speaker.fill").padding(20).foregroundColor(.white).background( Circle().shadow(color: .blue, radius: 3).frame( maxWidth: 70, maxHeight: 70, alignment: .center))}
                                    
                                    
                                  
                                    Button {} label: {
                                        Image(systemName: "tortoise.fill").padding(20).foregroundColor(.white).background( Circle().frame(minWidth: 30, idealWidth: 50, maxWidth: 50, minHeight: 30, idealHeight: 50, maxHeight: 50, alignment: .center).shadow(color: .blue, radius: 3))}
                                        
                                    
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
