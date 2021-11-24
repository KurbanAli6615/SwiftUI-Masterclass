//
//  VideoPlayerHalper.swift
//  Africa
//
//  Created by KurbanAli on 24/11/21.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func playVideo(filename: String, fileformat:String) -> AVPlayer {
    if let url = Bundle.main.url(forResource: filename, withExtension: fileformat) {
        videoPlayer = AVPlayer(url: url)
        videoPlayer?.play()
    }
    return videoPlayer!
}
