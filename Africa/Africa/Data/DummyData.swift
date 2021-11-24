//
//  DummyData.swift
//  Africa
//
//  Created by KurbanAli on 22/11/21.
//

import Foundation

class DummyData {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static let videos: [Video] = Bundle.main.decode("videos.json")
}
