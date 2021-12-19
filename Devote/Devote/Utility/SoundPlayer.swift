//
//  SoundPlayer.swift
//  Devote
//
//  Created by KurbanAli on 19/12/21.
//

import Foundation
import AVFAudio

var audioPlayer: AVAudioPlayer?

func playSound(sound:String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Invalid file Name :: \(sound).\(type) ")
        }
    }
}
