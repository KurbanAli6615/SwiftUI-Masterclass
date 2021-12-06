//
//  Constants.swift
//  TouchDown
//
//  Created by KurbanAli on 30/11/21.
//

import SwiftUI

//  MARK: - DATA
let sampleProduct = DataHalper.products.first!


//  MARK: - Color

let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

//  MARK: - Layout

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLatout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

//  MARK: - UX

let feedBack = UIImpactFeedbackGenerator(style: .medium)

//  MARK: - API


//  MARK: - Image


//  MARK: - Font


//  MARK: - String


//  MARK: - MISC
