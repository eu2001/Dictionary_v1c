//
//  LanguagesView.swift
//  Dictonary_V1b
//
//  Created by Eric Sousa on 2/7/23.
//

import SwiftUI

struct LanguageView: View {
    @State private var spaOn = true
    @State private var freOn = true
    @State private var gerOn = true
    @State private var itaOn = true
    @State private var porOn = true
    @State private var hebOn = true
    @State private var aslOn = true
var body: some View {
    ScrollView {
        VStack(spacing:20){
            VStack(alignment: .center){Text("Languages") .font(.title).bold().padding(.bottom, 20.0)}
            VStack(alignment: .leading){ HStack( spacing:10) {
                Image("english").resizable().scaledToFit().frame(width: 60, height: 40, alignment: .center).cornerRadius(5)
                Text("English").font(.title3)
                Spacer()
            }
                
            }
            HStack(spacing:10) {
                Toggle(isOn: $spaOn){ HStack{ Image("spanish").resizable().scaledToFit().frame(width: 60, height: 40, alignment: .center).cornerRadius(5)
                    Text("Spanish").font(.title3)}}
                
            }
            HStack(spacing:10) {
                Toggle(isOn: $freOn){ HStack{ Image("french").resizable().scaledToFit().frame(width: 60, height: 40, alignment: .center).cornerRadius(5)
                    Text("French").font(.title3)}}
                
            }
            
            HStack(spacing:10) {
                Toggle(isOn: $gerOn){ HStack{ Image("german").resizable().scaledToFit().frame(width: 60, height: 40, alignment: .center).cornerRadius(5)
                    Text("German").font(.title3)}}
                
            }
            HStack(spacing:10) {
                Toggle(isOn: $itaOn){ HStack{ Image("italian").resizable().scaledToFit().frame(width: 60, height: 40, alignment: .center).cornerRadius(5)
                    Text("Italian").font(.title3)}}
                
            }
            HStack(spacing:10) {
                Toggle(isOn: $porOn){ HStack{ Image("portuguese").resizable().scaledToFit().frame(width: 60, height: 40, alignment: .center).cornerRadius(5)
                    Text("Portuguese").font(.title3)}}
                
            }
            HStack(spacing:10) {
                Toggle(isOn: $hebOn){ HStack{
                    Image("hebrew").resizable().scaledToFit().frame(width: 60, height: 40, alignment: .center).cornerRadius(5)
                    Text("Hebrew").font(.title3)}}
                
            }
            
            HStack(spacing:10) {
                Toggle(isOn: $aslOn){ HStack{ Image("asl").resizable().scaledToFit().frame(width: 60, height: 40, alignment: .center).cornerRadius(5)
                    Text("American Sign Language").font(.title3)}}
                
            }
           
        }.padding(.horizontal, 55)
    }
}}

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
