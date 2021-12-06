//
//  HeaderDetailView.swift
//  TouchDown
//
//  Created by KurbanAli on 02/12/21.
//

import SwiftUI

struct HeaderDetailView: View {
    //  MARK: - Properties
    
    @EnvironmentObject var shop: Shop
    
    //  MARK: - Body

    var body: some View {
        VStack (alignment: .center, spacing: 10){
            Text("Productive Gear")
            
            Text( shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
            
        }//:VStack
        .foregroundColor(.white)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
        
    }
}
