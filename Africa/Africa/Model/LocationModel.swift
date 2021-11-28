//
//  LocationModel.swift
//  Africa
//
//  Created by KurbanAli on 28/11/21.
//

import Foundation
import MapKit

// MARK: - CouponListModelElement
struct NationalParkLocation: Codable, Identifiable {
    let id, name, image: String
    let latitude, longitude: Double
    
    
//    computed
    
    var location:CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
