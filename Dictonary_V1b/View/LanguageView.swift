//
//  LanguagesView.swift
//  Dictonary_V1b
//
//  Created by Eric Sousa on 2/7/23.
//

import SwiftUI



struct LanguageView:  View {
    //  @State var selecionado: Selecoes
    // @Binding var aparecer: ContentModel.books
    @State var showHEB = true
    @State  var showSPA = true
    @State  var showPOR = true
    @State   var showITA = true
    @State   var showFRE = true
    @State   var showGER = true
    @State  var showASL = true
    var body: some View {
        ZStack{
            Rectangle().fill(
                LinearGradient(
                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.610079325, green: 0.9385074156, blue: 1, alpha: 1)), Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))]),
                    startPoint: .topLeading,
                    endPoint: .bottom)).opacity(0.8).ignoresSafeArea()
           
                VStack(spacing:20){
                    VStack(alignment: .center){Text("Languages") .font(.title).bold().padding(.bottom, 20.0)}
                    ScrollView {
                    ZStack{
                        Rectangle().foregroundColor(.white).frame(maxWidth: .infinity).cornerRadius(25).padding(.horizontal, 25.0).shadow(color: .gray, radius: 4, x: 7, y: 7)
                        VStack(alignment: .leading){ HStack( spacing:10) {
                            Image("english").resizable().scaledToFit().frame(width: 60, height: 40, alignment: .center).cornerRadius(5)
                            Text("English").font(.title3)
                            Spacer()
                        }
                            
                            HStack(spacing:10) {
                                Toggle(isOn:$showSPA){
                                    
                                    HStack{ Image("spanish").resizable().scaledToFit().frame(width: 60, height: 40, alignment: .center).cornerRadius(5)
                                        Text("Spanish").font(.title3)}}
                                
                            }
                            HStack(spacing:10) {
                                Toggle(isOn: $showFRE){ HStack{ Image("french").resizable().scaledToFit().frame(width: 60, height: 40, alignment: .center).cornerRadius(5)
                                    Text("French").font(.title3)}}
                                
                            }
                            
                            HStack(spacing:10) {
                                Toggle(isOn: $showGER){ HStack{ Image("german").resizable().scaledToFit().frame(width: 60, height: 40, alignment: .center).cornerRadius(5)
                                    Text("German").font(.title3)}}
                                
                            }
                            HStack(spacing:10) {
                                Toggle(isOn: $showITA){ HStack{ Image("italian").resizable().scaledToFit().frame(width: 60, height: 40, alignment: .center).cornerRadius(5)
                                    Text("Italian").font(.title3)}}
                                
                            }
                            HStack(spacing:10) {
                                Toggle(isOn: $showPOR){ HStack{ Image("portuguese").resizable().scaledToFit().frame(width: 60, height: 40, alignment: .center).cornerRadius(5)
                                    Text("Portuguese").font(.title3)}}
                                
                            }
                            HStack(spacing:10) {
                                Toggle(isOn: $showHEB){ HStack{
                                    Image("hebrew").resizable().scaledToFit().frame(width: 60, height: 40, alignment: .center).cornerRadius(5)
                                    Text("Hebrew").font(.title3)}}
                                
                            }
                            
                            HStack(spacing:10) {
                                Toggle(isOn: $showASL){ HStack{ Image("asl").resizable().scaledToFit().frame(width: 60, height: 40, alignment: .center).cornerRadius(5)
                                    Text("American Sign Language").font(.title3)}}
                                
                            }
                            
                        }.padding(.horizontal, 55).padding(.vertical, 30)}
                }}
        }}}

struct LanguageView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageView()
    }
}


/*@State private var langOn = false

var body: some View {
    Toggle(isOn: $vibrateOnRing) {
        Text("Vibrate on Ring")
    }
}*/
