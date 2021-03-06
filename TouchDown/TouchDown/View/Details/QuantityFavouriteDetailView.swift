//
//  QuantityFavouriteDetailView.swift
//  TouchDown
//
//  Created by KurbanAli on 06/12/21.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    //  MARK: - Properties
    
    @State private var counter: Int = 0
    
    //  MARK: - Body

    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            
            Button {
                if counter > 0 {
                     counter -= 1
                }
            } label: {
                Image(systemName: "minus.circle")
            }
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
           
            Button {
                counter += 1
            } label: {
                Image(systemName: "plus.circle")
            }
            
            Spacer()
            
            Button {
            } label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            }

        }//:HStack
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
        
    }
}

//  MARK: - Preview

struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
