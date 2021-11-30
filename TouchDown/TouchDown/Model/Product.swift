//
//  ProductModel.swift
//  TouchDown
//
//  Created by KurbanAli on 30/11/21.
//

import Foundation

struct Product: Codable, Identifiable{
    
    //  MARK: - JSON Keys
    let id: Int
    let name, image: String
    let price: Int
    let description: String
    let color: [Double]
    
    //  MARK: - Computed properties
    
    var red: Double { return color[0] }
    var green: Double { return color[1] }
    var blue: Double { return color[2] }
    
    var formattedPrice: String { return "$\(price)" }
    
}
