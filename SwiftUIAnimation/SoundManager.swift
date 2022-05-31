//
//  SoundManager.swift
//  SwiftUIAnimation
//
//  Created by Александра Лесовская on 31.05.2022.
//

import Foundation
import AVKit

class SoundManager {
    
    static let shared = SoundManager()
    var player: AVAudioPlayer?
    
    private init() {}
    
    func playSound() {
        guard let url = Bundle.main.url(forResource: "grom", withExtension: ".mp3") else { return }
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch {
            print(error.localizedDescription)
        }
    }
    
    
}
