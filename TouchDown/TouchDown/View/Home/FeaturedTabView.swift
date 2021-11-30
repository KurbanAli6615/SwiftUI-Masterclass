//
//  FeaturedTabView.swift
//  TouchDown
//
//  Created by KurbanAli on 30/11/21.
//

import SwiftUI

struct FeaturedTabView: View {
    
    var body: some View {
        TabView {
            ForEach(DataHalper.players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .background(Color.gray)
        
    }
}
