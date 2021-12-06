//
//  Shop.swift
//  TouchDown
//
//  Created by KurbanAli on 06/12/21.
//

import Foundation

class Shop: ObservableObject {
    
    @Published var showingProducts: Bool = false
    @Published var selectedProduct: Product? = nil
    
}
