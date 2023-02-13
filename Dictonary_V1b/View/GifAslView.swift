//
//  GifAslView2.swift
//  Dictonary_V1b
//
//  Created by Eric Sousa on 2/11/23.
//

import SwiftUI

struct GifAslView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(spacing: 30){
            HStack{
                Spacer()
                  Button (action: { presentationMode.wrappedValue.dismiss()}, label: {Image(systemName: "xmark").foregroundColor(.black).font(.largeTitle).padding(20)})
            }
          
            VStack(spacing: 0){
                GifImage("GoodmorningASL")
                Text("Good Morning").font(.title2).bold()
                Spacer()
            }.padding(.bottom, 120)
          
            Spacer()
        }
        
    }
}

struct GifAslView_Previews: PreviewProvider {
    static var previews: some View {
        GifAslView()
    }
}
