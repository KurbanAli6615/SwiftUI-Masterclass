//
//  FruitsModel.swift
//  Fructus
//
//  Created by KurbanAli on 14/11/21.
//

import SwiftUI

//  MARK: - FruitsDataModel

struct Fruit: Identifiable{
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
