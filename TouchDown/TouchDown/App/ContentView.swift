//
//  ContentView.swift
//  TouchDown
//
//  Created by KurbanAli on 30/11/21.
//

import SwiftUI

struct ContentView: View {

    //  MARK: - Properties
    
    @EnvironmentObject var shop: Shop
    
    //  MARK: - Body

    var body: some View {
        ZStack {
            if shop.showingProducts == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x:  0, y: 5)
                   
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 0) {
                            FeaturedTabView()
                                .padding(.vertical, 20)
                                .frame(height: 290)
                            
                            CategoryGridView()
                            
                            TitleView(title: "Halmets")
                            
                            LazyVGrid(columns: gridLatout, spacing: 15) {
                                    ForEach(DataHalper.products) { product in
                                        ProductItemView(product: product)
                                            .onTapGesture {
                                                feedBack.impactOccurred()
                                                withAnimation(.easeOut){
                                                    shop.selectedProduct = product
                                                    shop.showingProducts = true
                                                }
                                            }
                                    }
                            }
                            .padding(15)
                            
                            TitleView(title: "Brands")

                            BrandGridView()
                            
                            FooterView()
                                .padding(.horizontal, 30)
                        }
                    }
                }//:VStack
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        }//:ZStack
        .ignoresSafeArea(.all, edges: .all)
    }
}

//  MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
