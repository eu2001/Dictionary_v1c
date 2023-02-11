//
//  FavoriteView.swift
//  Dictonary_V1b
//
//  Created by Eric Sousa on 2/7/23.
//

import SwiftUI
import AVKit

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

struct FavoriteView: View {
    @EnvironmentObject var model: ContentModel
    @State var audioPlayer: AVAudioPlayer?
    
    var body: some View {
       
        ScrollView{
            LazyVStack {Text("Favorites")
                    .font(.title).bold()
                ForEach (model.books){
                    r in
                    ZStack {
                       
                        Rectangle().background(.white).foregroundColor(.white).cornerRadius(15).shadow(color: .gray, radius: 5, x: 5, y: 5).aspectRatio(CGSize(width:335, height: 230),contentMode: .fit)
                        VStack(alignment: .leading){ HStack {
                            Button(action: {SoundManager.instance.playSound(sound: .Goodmorning) }) {
                                Image(systemName: "star.fill").resizable().frame(width: 15, height: 15).foregroundColor(.yellow)
                               
                                Text(r.nameEng).fontWeight(.bold).foregroundColor(Color.blue)}}
                            HStack{Text("SPA:")
                                                           Text(r.nameEsp)
                                Button { SoundManager.instance.playSound(sound: .GoodmorningSPA) } label: {
                                    Image(systemName: "speaker.fill")
                                }
   
                            }
                            HStack{Text("FRE:")
                                Text(r.nameFre)
                                Button { SoundManager.instance.playSound(sound: .GoodmorningFRE) } label: {
                                    Image(systemName: "speaker.fill")
                                }
                            }
                            HStack{Text("GER:")
                                Text(r.nameGer)
                                Button { SoundManager.instance.playSound(sound: .GoodmorningGER) } label: {
                                    Image(systemName: "speaker.fill")
                                }
                            }
                            HStack{Text("POR:")
                                Text(r.namePort)
                                Button { SoundManager.instance.playSound(sound: .GoodmorningPOR) } label: {
                                    Image(systemName: "speaker.fill")
                                }
                            }
                            HStack{Text("ITA:")
                                Text(r.nameIta)
                                Button { SoundManager.instance.playSound(sound: .GoodmorningITA) } label: {
                                    Image(systemName: "speaker.fill")
                                }
                            }
                            HStack{Text("HEB:")
                                Text(r.nameheb)
                                Button { SoundManager.instance.playSound(sound: .GoodmorningHEB) } label: {
                                    Image(systemName: "speaker.fill")
                                }
                            }
                            HStack{Text("ASL:")
                                Text(r.nameEng)
                                Button { SoundManager.instance.playSound(sound: .Goodmorning) } label: {
                                    Image(systemName: "play.fill")
                                }
                            }
                            
                        }
                            
                    }
                    .padding(.horizontal, 40.0).padding(.vertical,5)
                    
                    
                }
            
            }
        } 
    }
   
   /* func playSound() {
        let pathToSound = Bundle.main.path(forResource:"good", ofType: "m4a")!
        let url = URL(fileURLWithPath: pathToSound)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        }
        catch { print (error)}
    }*/

}


struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView().environmentObject(ContentModel())
    }
}
