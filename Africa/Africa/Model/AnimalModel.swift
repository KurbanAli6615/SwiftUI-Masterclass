//
//  AnimalModel.swift
//  Africa
//
//  Created by KurbanAli on 17/11/21.
//

import Foundation


struct Animal: Codable, Identifiable {
    let id, name, headline, description: String
    let link: String
    let image: String
    let gallery, fact: [String]
}
