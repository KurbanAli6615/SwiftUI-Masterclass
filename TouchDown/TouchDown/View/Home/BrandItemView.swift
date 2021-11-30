//
//  BrandView.swift
//  TouchDown
//
//  Created by KurbanAli on 30/11/21.
//

import SwiftUI

struct BrandItemView: View {
    //  MARK: - Properties
    
    let brand: BrandModel
    
    
    //  MARK: - Body

    var body: some View {
            Image(brand.image)
                .resizable()
                .scaledToFit()
                .padding(4)
                .background(Color.white.cornerRadius(12))
                .background(
                    RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1)
                )
    }
}

//  MARK: - Preview

struct BrandView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: DataHalper.brands.first!)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
