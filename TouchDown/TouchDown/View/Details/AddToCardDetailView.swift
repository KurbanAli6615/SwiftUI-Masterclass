//
//  AddToCardDetailView.swift
//  TouchDown
//
//  Created by KurbanAli on 06/12/21.
//

import SwiftUI

struct AddToCardDetailView: View {
    //  MARK: - Properties
    
    @EnvironmentObject var shop: Shop
    
    //  MARK: - Body

    var body: some View {
        Button {
            
        } label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }
        .padding(15)
        .background(
            Color(red:shop.selectedProduct?.red ?? sampleProduct.red, green: shop.selectedProduct?.green ?? sampleProduct.green, blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
        )
        .clipShape(Capsule())
    }
}
//  MARK: - Preview

struct AddToCardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCardDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
