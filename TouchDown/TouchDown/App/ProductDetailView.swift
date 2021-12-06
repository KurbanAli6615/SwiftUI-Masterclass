//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by KurbanAli on 02/12/21.
//

import SwiftUI

struct ProductDetailView: View {
    
    //  MARK: - Properties
        
    @EnvironmentObject var shop: Shop
    
    //  MARK: - Body

    var body: some View {
        VStack (alignment: .leading, spacing: 5){
            //  MARK: - Navbar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)

            //  MARK: - Header
            
            HeaderDetailView()
                .padding(.horizontal)
                
            //  MARK: - Top part
            
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            //  MARK: - bottom
            
            VStack (alignment: .center, spacing: 0) {
                
                //  MARK: - ratings & size
                
                RatingsSizesDetailsView()
                    .padding(.top, -25)
                    .padding(.bottom, 10)
                //  MARK: - desc
                
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }//:ScrollView
                
                //  MARK: - qty. + fav
                
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                
                //  MARK: - Add to cart
                AddToCardDetailView()
                    .padding(.bottom, 20)
                Spacer()
            }//:VStack
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
            
            
        }//:VStack
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(red: shop.selectedProduct?.red ?? sampleProduct.red, green: shop.selectedProduct?.green ?? sampleProduct.green, blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
                .ignoresSafeArea(.all, edges: .all)
        )
        
    }
}

//  MARK: - Preview

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 275, height: 812))
    }
}
