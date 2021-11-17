//
//  CoverImageVIew.swift
//  Africa
//
//  Created by KurbanAli on 17/11/21.
//

import SwiftUI

struct CoverImageView: View {
    
    //  MARK: - Properties
    
    let coverImages:[CoverImage] = Bundle.main.decode("covers.json")
    
    //  MARK: - Body
    var body: some View {
        TabView {
            ForEach(coverImages) { image in
                Image(image.name)
                    .resizable()
                    .scaledToFill()
                    
            }
        }//: TabView
        .tabViewStyle(PageTabViewStyle())
    }
}

//  MARK: - Preview
struct CoverImageVIew_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
