//
//  BrandGridView.swift
//  TouchDown
//
//  Created by KurbanAli on 30/11/21.
//

import SwiftUI

struct BrandGridView: View {
    
    //  MARK: - Properties
    
    //  MARK: - Body
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLatout, spacing: columnSpacing) {
                ForEach(DataHalper.brands) { brand in
                    BrandItemView(brand: brand)
                }
            }
            .frame(height:200)
            .padding(15)
        }
    }
}

//  MARK: - Preview


struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
