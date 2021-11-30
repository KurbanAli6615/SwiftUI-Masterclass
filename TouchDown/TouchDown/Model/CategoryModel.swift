//
//  CategoryModel.swift
//  TouchDown
//
//  Created by KurbanAli on 30/11/21.
//

import Foundation

struct CategoryModel: Codable, Identifiable {
    let id: Int
    let name, image: String
}
