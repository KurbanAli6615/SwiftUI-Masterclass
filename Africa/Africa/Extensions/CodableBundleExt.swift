//
//  CodableBundleExt.swift
//  Africa
//
//  Created by KurbanAli on 17/11/21.
//

import Foundation

extension Bundle {
    func decode <T: Codable> (_ file: String) -> T {
        
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to file from bundle")
        }
        
        let decoder = JSONDecoder()
        
        guard let loded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode from bundle")
        }
        
        return loded
    }
}
