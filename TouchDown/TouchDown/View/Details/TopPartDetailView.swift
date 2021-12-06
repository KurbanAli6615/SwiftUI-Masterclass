//
//  TopPartDetailView.swift
//  TouchDown
//
//  Created by KurbanAli on 02/12/21.
//

import SwiftUI

struct TopPartDetailView: View {
    //  MARK: - Properties
    
    @State private var isAnimating = false
    @EnvironmentObject var shop: Shop


    //  MARK: - Body

    var body: some View {
        HStack (alignment: .center, spacing: 6){
            VStack (alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -45)
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        }
    }
}

//  MARK: - Preview

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
