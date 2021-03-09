//
//  ExtraitRowView.swift
//  Kaamelott
//
//  Created by Clement Rabourdin on 23/06/2020.
//  Copyright © 2020 Clement Rabourdin. All rights reserved.
//

import SwiftUI
import AVFoundation

struct ExtraitRowView: View {
    var extrait: Extrait
    @State var player: AVAudioPlayer!
    
    var body: some View {
        Button(action: {
            if let player = self.player, player.isPlaying {
                player.stop()
            }
            else {
                do {
                    try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                    
                    let urlString = Bundle.main.path(forResource: self.extrait.file, ofType: nil)
                    
                    guard urlString != nil else {
                        print("Can't find file")
                        return
                    }
                    
                    self.player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: urlString!))
                    self.player.prepareToPlay()
                    self.player.play()
                }
                catch  {
                    print("Something went wrong")
                }
            }
        }){
            extrait.image
                .resizable()
                .frame(width: 60, height: 60, alignment: .center)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.white, lineWidth: 2))
                .shadow(radius: 10)
            Text(extrait.title)
            Spacer()
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct ExtraitRowView_Previews: PreviewProvider {
    static var previews: some View {
        ExtraitRowView(extrait: extraitData[0])
    }
}
    
