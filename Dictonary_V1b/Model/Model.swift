//
//  Model.swift
//  Dictonary_V1b
//
//  Created by Eric Sousa on 2/7/23.
//

import Foundation

struct Book : Decodable, Identifiable {
    
    var id: Int
    var chapter: Int
    var isFavourite: Bool
    var nameEng: String
    var  audioEng: String
    var translitEng: String
          var  namePort: String
           var translitPor: String
            var audioPor: String
            var nameEsp: String
            var translitEsp: String
            var audioEsp: String
            var nameIta: String
            var translitIta: String
            var audioIta: String
            var nameGer: String
            var translitGer: String
            var audioGer: String
            var nameFre: String
            var translitFre: String
            var audioFre: String
    var nameheb: String
    var audioheb: String
   
    
}
