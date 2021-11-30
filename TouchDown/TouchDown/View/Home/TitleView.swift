//
//  TitleView.swift
//  TouchDown
//
//  Created by KurbanAli on 30/11/21.
//

import SwiftUI

struct TitleView: View {
    
    //  MARK: - Properties
        
    var title:String
    
    //  MARK: - Body

    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
            .fontWeight(.heavy)
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 15)

    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Halmet")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
