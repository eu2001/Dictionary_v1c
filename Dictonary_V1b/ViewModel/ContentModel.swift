//
//  BookModel.swift
//  Dictonary_V1b
//
//  Created by Eric Sousa on 2/7/23.
//
import SwiftUI
import AVKit

import Foundation
class ContentModel: ObservableObject {
    
    @Published var books = [Book]()
    
    init() {
        
        getLocalData()
        
    }
    
    func getLocalData() {
        
        // Get a url to the json file
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        
        do {
            // Read the file into a data object
            let jsonData = try Data(contentsOf: jsonUrl!)
            
            // Try to decode the json into an array of modules
            let jsonDecoder = JSONDecoder()
            let books = try jsonDecoder.decode([Book].self, from: jsonData)
            
            // Assign parsed modules to modules property
            self.books = books
        }
        catch {
            // TODO log error
            print("Couldn't parse local data")
        }}
    
    
    func updateFavourite(forId: Int) {
        if let index = books.firstIndex(where: { $0.id == forId }) {
            books[index].isFavourite.toggle()
        }
    }}



class SoundManager {
    static let instance = SoundManager ()
    var player: AVAudioPlayer?
    enum SoundOption: String {
        case Airplane
        case AirplaneESP
        case AirplaneGER
        case AirplaneHEB
        case AiplanePOR
        case AirplaneITA
        case AirplaneFRE
        case Goodmorning
        case GoodmorningPOR
        case GoodmorningSPA
        case GoodmorningITA
        case GoodmorningFRE
        case GoodmorningGER
        case GoodmorningHEB
        case BoardingAnnounc
        case BoardingAnnouncPOR
    }
    func playSound(sound: SoundOption) {
        guard let url = Bundle.main.url(forResource: sound.rawValue, withExtension: "m4a") else { return }
        do{ player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch { print ("Error playing")}
    }
}
/*
class LanguagesShow {
    init() { showSelections() }
    // @Published var selections = LanguageView.
    func showSelections() {
        @State var selections = LanguageView()
        if selections.showSPA ? :
            
    }}
  */
