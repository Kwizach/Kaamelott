//
//  PlayView.swift
//  Kaamelott
//
//  Created by Clement Rabourdin on 22/06/2020.
//  Copyright © 2020 Clement Rabourdin. All rights reserved.
//

import SwiftUI
import AVFoundation

struct PlayView: View {
    
    @State var player: AVAudioPlayer!
    
    var body: some View {
        Button(action: {
            if let player = self.player, player.isPlaying {
                player.stop()
            }
            else {
                self.player.play()
            }
        }){
            Image("Kaamelott_Play")
                .resizable()
                .frame(width: 75, height: 75)
                .colorInvert()
        }
        .cornerRadius(15)
        .onAppear {
            do {
                //try AVAudioSession.sharedInstance().setMode(.default)
                try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                
                let urlString = Bundle.main.path(forResource: "ah_bah_ouais_mais_apres_il_faut_un_peu_de_technique", ofType: "mp3")
                
                guard urlString != nil else {
                    print("Can't find file")
                    return
                }
                
                self.player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString!))
                self.player.prepareToPlay()
            }
            catch {
                print("Something went wrong")
            }
        }
    }
}

struct PlayView_Previews: PreviewProvider {
    static var previews: some View {
        PlayView()
    }
}
