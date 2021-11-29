//
//  CreditsView.swift
//  Africa
//
//  Created by KurbanAli on 29/11/21.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image(Images.compass)
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            
            Text(
    """
    Copyright © KurbanAli Masu
    All right reserved
    Better App ♡ Less Code
    """
            )
                .font(.footnote)
            .multilineTextAlignment(.center)
        }
        .padding()
        .opacity(0.4)
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
