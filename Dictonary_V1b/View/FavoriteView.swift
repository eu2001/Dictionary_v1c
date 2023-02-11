//
//  FavoriteView.swift
//  Dictonary_V1b
//
//  Created by Eric Sousa on 2/7/23.
//

import SwiftUI
import AVKit

/*class SoundManager {
    static let instance = SoundManager ()
    var player: AVAudioPlayer?
    func playSound() {
        guard let url = Bundle.main.url(forResource: "good", withExtension: "mp3") else { return }
        do{ player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error { print ("Error playing")}
    }
} */

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
                            Button(action: {}) {
                                Image(systemName: "star.fill").resizable().frame(width: 15, height: 15).foregroundColor(.yellow)
                               
                                Text(r.nameEng).fontWeight(.bold).foregroundColor(Color.blue)}}
                            HStack{Text("SPA:")
                                                           Text(r.nameEsp)
                                Button { /* SoundManager.instance.playSound() */ } label: {
                                    Image(systemName: "speaker.fill")
                                }
   
                            }
                            HStack{Text("FRE:")
                                Text(r.nameFre)
                                Image(systemName: "speaker.fill")
                            }
                            HStack{Text("GER:")
                                Text(r.nameGer)
                                Image(systemName: "speaker.fill")
                            }
                            HStack{Text("POR:")
                                Text(r.namePort)
                                Image(systemName: "speaker.fill")
                            }
                            HStack{Text("ITA:")
                                Text(r.nameIta)
                                Image(systemName: "speaker.fill")
                            }
                            HStack{Text("HEB:")
                                Text(r.nameheb)
                                Image(systemName: "speaker.fill")
                            }
                            HStack{Text("ASL:")
                                Text(r.nameEng)
                                Image(systemName: "playpause.fill")
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
