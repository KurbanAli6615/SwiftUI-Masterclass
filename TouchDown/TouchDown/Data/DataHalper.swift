//
//  DataHalper.swift
//  TouchDown
//
//  Created by KurbanAli on 30/11/21.
//

import Foundation

class DataHalper {
    
    static let brands: [BrandModel] = Bundle.main.decode("brand.json")
    static let category: [CategoryModel] = Bundle.main.decode("category.json")
    static let players: [PlayerModel] = Bundle.main.decode("player.json")
    static let products: [Product] = Bundle.main.decode("product.json")
    
}
