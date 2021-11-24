//
//  VideoModel.swift
//  Africa
//
//  Created by KurbanAli on 24/11/21.
//

import Foundation

struct Video: Codable, Identifiable {
    let id, name, headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
}
