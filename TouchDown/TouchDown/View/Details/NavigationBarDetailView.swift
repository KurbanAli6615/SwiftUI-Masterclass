//
//  NavigationBarDetailView.swift
//  TouchDown
//
//  Created by KurbanAli on 02/12/21.
//

import SwiftUI

struct NavigationBarDetailView: View {
    //  MARK: - Properties
    
    @EnvironmentObject var shop: Shop
    
    //  MARK: - Body

    var body: some View {
        HStack {
            Button {
                feedBack.impactOccurred()

                withAnimation(.easeIn) {
                    shop.selectedProduct = nil
                    shop.showingProducts = false
                }
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }

        }//HStack
    }
}
//  MARK: - Preview

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
