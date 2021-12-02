//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by KurbanAli on 02/12/21.
//

import SwiftUI

struct ProductDetailView: View {
    
    //  MARK: - Properties
        
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
            //  MARK: - bottom
            
            //  MARK: - ratings & size
            
            //  MARK: - desc
            
            //  MARK: - qty. + fav
            
            //  MARK: - Add to cart
            
            Spacer()
        }//:VStack
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue)
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
